from django.urls import re_path
from channels.routing import ProtocolTypeRouter, URLRouter
from channels.auth import AuthMiddlewareStack
from django.conf.urls import url


from . import consumers

websocket_urlpatterns = [
    re_path(r'ws/chat/', consumers.ChatConsumer),
]

application = ProtocolTypeRouter({

    "websocket": AuthMiddlewareStack(
        URLRouter([
            url(r"^front(end)/$", consumers.ChatConsumer),
        ])
    ),

})
