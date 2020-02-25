import React, { Component } from 'react';
import Chat from './Chat';
import Tabs from './Tabs';
import Form from './Form'

const wsUrl = 'ws://localhost:8000/ws/chat/';


export default class ChatController extends Component {
    constructor(props) {
        super(props);
        this.chatSocket = new WebSocket(`${wsUrl}`);
        
        this.state = {
            chats: {},
            waitingMessages: {},
            chatInput: '',
            formInput: {},
            active: 'chat'
        };

        this.timeout = null

    }


    toggleChat(e){
        const waitingMessages = {...this.state.waitingMessages}
        waitingMessages[e.target.id] = 0
        Array.from(document.querySelectorAll('.tab')).map(t => t.classList.remove('active'))
        e.target.classList.add('active')
        this.props.setActiveChat(e.target.id)
        this.setState({waitingMessages})
    }

    handleChange(e) {
        this.setState({ chatInput: e.target.value });
    }

    sendMessage ()  {
        const msg = {
                    'type': 'message',
                    'body': {
                        'message': this.state.chatInput,
                        'room_id': this.props.activeChat
                    }
     }
     this.chatSocket.send(JSON.stringify(msg));
    }
    


    handleKeyUp = (e) =>{
        if (e.key === 'Enter') {
            this.state.chats[this.props.activeChat].push(this.state.chatInput);
            this.sendMessage ()
            this.setState({chatInput:''})
        }

    }
    componentDidMount() {
        this.chatSocket.onopen = (e) => {
            console.log(e);
        }

        this.chatSocket.onmessage = (e) => {
            const data = JSON.parse(e.data);
            console.log(`data: ${data}`);
            const chats = {...this.state.chats}
            const waitingMessages = {...this.state.waitingMessages}
            const room_id = parseInt(data.body.room_id);
            if (data.type === "connect"){
                waitingMessages[data.body.room_id] = 0
                chats[data.body.room_id] = []
                this.setState({chats , waitingMessages})
                if (Object.keys(chats).length === 1)
                    this.props.setActiveChat(room_id)
            }
            if (data.type === "customer_message"){
                chats[room_id].push(data.body.message)
                waitingMessages[room_id] +=1;
                this.setState({chats , waitingMessages})
            }
            if (data.type === "disconnect"){
                delete chats[room_id]
                delete waitingMessages[room_id]
                this.props.setCustomer('delete', room_id)
                this.setState({chats:chats})
            }
            if (data.type === "customer_name"){
                console.log(data.body)
                this.props.setCustomer('add', room_id, data.body.name ,data.body.skill )
            }
        }
        
    }
    componentWillUnmount() {
        this.chatSocket.close();
        this.chatSocket = null
        }

    sendProduct(product){
        console.log(product);
        const msg = {
            'type': 'send_product',
            'body': {
                'room_id': this.props.activeChat,
                'name': product.name,
                'price':product.price,
                'image': product.imageUrl
            }
        }
        this.chatSocket.send(JSON.stringify(msg));
    }

    sendFormToWS(){       
        const formData = {...this.state.formInput}
        const msg = {
            'type': 'form_data',
            'body': {
                'room_id': this.props.activeChat,
                'form-data': formData,
            }
        }
        this.chatSocket.send(JSON.stringify(msg));
    }

    startForm(e){
        console.log(e);
        const msg = {
            'type': 'start_form',
            'body': {
                'form-fields': e,
                'room_id': this.props.activeChat,
            }
        }
        this.chatSocket.send(JSON.stringify(msg));
        this.setState({active:"form"})
    }
    
    formInputHandle = (e,field) =>{
        clearTimeout(this.timeout)
        const temp = { ...this.state.formInput }
        temp[field] = e.target.value;
        this.setState({formInput: temp})
        this.timeout = setTimeout(() => this.sendFormToWS() , 500);        
    }

    render() {
        const { chats } = this.state;
        const {waitingMessages} = this.state;
        const { customers } = this.props;
        const {activeChat} = this.props;

        



        return (
            <>
                <Tabs 
                chats={Object.keys(chats)} 
                customers = {customers}
                toggleChat={(e)=> this.toggleChat(e)} 
                waitingMessages={waitingMessages} />

                {
                    this.state.active === 'chat'?
                    <Chat 
                    messages={chats[activeChat]} 
                    handleChange={(e) => this.handleChange(e)} 
                    handleKeyUp={this.handleKeyUp} 
                    chatInput = {this.state.chatInput}
                />         :

                <Form formInputHandle={this.formInputHandle} />
                    
                }


       
            </>
        );
    }
}
