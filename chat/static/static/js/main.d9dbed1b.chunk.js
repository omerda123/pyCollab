(this["webpackJsonpmycollab-dev"]=this["webpackJsonpmycollab-dev"]||[]).push([[0],[,,,,,,,,,function(e){e.exports=JSON.parse('[{"image_url":"https://whichnespresso.com/wp-content/uploads/home.png","img_alt":"lattisima","name":"Lattisima","price":100},{"image_url":"https://whichnespresso.com/wp-content/uploads/home.png","img_alt":"lattisima","name":"Lattisima","price":100}]')},function(e,t,a){e.exports=a(17)},,,,,function(e,t,a){},function(e,t,a){},function(e,t,a){"use strict";a.r(t);var n=a(0),c=a.n(n),s=a(8),l=a.n(s),r=(a(15),a(1)),i=a(2),o=a(4),u=a(3),m=a(5);function h(e){return c.a.createElement("div",{className:"agent-area"},c.a.createElement("div",null,c.a.createElement("img",{src:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9MVF1euuahaAdL4r6Y4P4PaVdewuQlhn1MoPjL8bMEyJxI_Aq",className:"agent-avatar",alt:"agent-avatar"})),c.a.createElement("div",{className:"agent-details"},c.a.createElement("div",{className:"agent-name"},e.user?c.a.createElement(c.a.Fragment,null,e.user.first_name," ",e.user.last_name," "):null),c.a.createElement("div",null,c.a.createElement("div",{className:"status-bubble"}),"Available")))}function d(){return c.a.createElement("div",{className:"details"},c.a.createElement("div",{className:"details-item"}," ",c.a.createElement("div",{style:{fontWeight:"bold",width:"110px",paddingLeft:"5px"}},"Customer"),c.a.createElement("div",null," David ")),c.a.createElement("div",{className:"details-item"}," ",c.a.createElement("div",{style:{fontWeight:"bold",width:"110px",paddingLeft:"5px"}},"Skill")," ",c.a.createElement("div",null," Coffee machine")),c.a.createElement("div",{className:"details-item"}," ",c.a.createElement("div",{style:{fontWeight:"bold",width:"110px",paddingLeft:"5px"}},"call duration")," ",c.a.createElement("div",null," 01:24 ")))}function v(e){return c.a.createElement("div",{className:"chat-bubble ".concat(e.author)},e.content)}function p(e){var t=e.messages,a=e.handleChange,n=e.handleKeyUp,s=e.chatInput;c.a.createRef();return c.a.createElement("div",null,c.a.createElement("div",{className:"chat-box"},t?t.map((function(e,t){return c.a.createElement(v,{key:t,content:e,author:"sender"})})):c.a.createElement("div",null," You are here alone "),c.a.createElement("div",{className:"dummy",ref:function(e){e}})),c.a.createElement("div",null,c.a.createElement("input",{type:"text",autoComplete:"off",className:"chat-input",id:"chat-message-input",value:s,onChange:function(e){return a(e)},onKeyUp:function(e){return n(e)}})))}function g(e){return c.a.createElement("div",{className:"products-list"},e.products.map((function(e,t){return c.a.createElement(c.a.Fragment,null,c.a.createElement("div",{className:"product",key:t},c.a.createElement("div",{className:"product-pic"},c.a.createElement("img",{src:e.image_url,alt:e.image_alt,className:"product-image"})),c.a.createElement("div",{className:"product-details"},c.a.createElement("div",null,e.name," "),c.a.createElement("div",null,e.price,"$"))))})))}function f(e){return c.a.createElement("div",{className:"carousel"},c.a.createElement("h2",null," ","<"," Products >"),c.a.createElement(g,{products:e.products}))}var E=a(6);function b(e){var t=e.chats,a=e.toggleChat;return c.a.createElement("div",{className:"tabs"},t.map((function(e,t){return c.a.createElement("div",{className:"tab",key:t,onClick:function(e){return a(e)}},e)})))}var y=function(e){function t(e){var a;return Object(r.a)(this,t),(a=Object(o.a)(this,Object(u.a)(t).call(this,e))).handleKeyUp=function(e){"Enter"===e.key&&(console.log(a.state.chats[a.state.activeChat]),a.state.chats[a.state.activeChat].push(a.state.chatInput),a.sendMessage(),a.setState({chatInput:""}))},a.chatSocket=new WebSocket("".concat("ws://localhost:8000/ws/chat/")),a.state={chats:{},activeChat:"200",chatInput:""},a}return Object(m.a)(t,e),Object(i.a)(t,[{key:"toggleChat",value:function(e){this.setState({activeChat:e.target.innerHTML})}},{key:"handleChange",value:function(e){this.setState({chatInput:e.target.value})}},{key:"sendMessage",value:function(){var e={type:"message",body:{message:this.state.chatInput,room_id:this.state.activeChat}};this.chatSocket.send(JSON.stringify(e))}},{key:"componentDidMount",value:function(){var e=this;this.chatSocket.onopen=function(e){console.log(e)},this.chatSocket.onmessage=function(t){var a=JSON.parse(t.data);if(console.log("data: ".concat(a)),"connect"===a.type){var n=Object(E.a)({},e.state.chats);n[a.body.room_id]=[],e.setState({chats:n})}if("message"===a.type){var c=Object(E.a)({},e.state.chats);c[a.body.room_id].push(a.body.message),e.setState({chats:c})}}}},{key:"componentWillUnmount",value:function(){this.chatSocket.close(),this.chatSocket=null}},{key:"render",value:function(){var e=this,t=this.state.chats,a=this.state.activeChat;return c.a.createElement(c.a.Fragment,null,c.a.createElement(b,{chats:Object.keys(t),toggleChat:function(t){return e.toggleChat(t)}}),c.a.createElement(p,{messages:t[a],handleChange:function(t){return e.handleChange(t)},handleKeyUp:this.handleKeyUp,chatInput:this.state.chatInput}))}}]),t}(n.Component);function N(e){return c.a.createElement("div",{className:"agent-home"},c.a.createElement("div",{className:"left"},c.a.createElement(h,{user:e.user}),c.a.createElement(d,null)),c.a.createElement("div",{className:"center"},c.a.createElement(y,null)),c.a.createElement("div",{className:"right"},c.a.createElement("a",{href:"/accounts/logout/"},"logout"),c.a.createElement(f,{products:e.products})))}a(16);var k=a(9),w=function(e){function t(){var e;return Object(r.a)(this,t),(e=Object(o.a)(this,Object(u.a)(t).call(this))).state={user:null,role:2},e}return Object(m.a)(t,e),Object(i.a)(t,[{key:"UNSAFE_componentWillMount",value:function(){var e=this;fetch("/whoami/").then((function(e){return e.json()})).then((function(t){return e.setState({user:t})}))}},{key:"toggleLogin",value:function(){this.setState((function(e){return{loggedIn:!e.loggedIn}}))}},{key:"render",value:function(){return c.a.createElement("div",{className:"container"},c.a.createElement(N,{products:k,user:this.state.user,ws_url:this.wsUrl}))}}]),t}(n.Component);Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));l.a.render(c.a.createElement(w,null),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(e){e.unregister()}))}],[[10,1,2]]]);
//# sourceMappingURL=main.d9dbed1b.chunk.js.map