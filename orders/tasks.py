from celery import task
from django.core.mail import send_mail
from .models import Order


@task
def order_created(order_id):
    order = Order.objects.get(id=order_id)
    subject = f'Order nr. {order.id}'
    message = f'Dear {order.first_name}, \n\nYou have successfilly placed an order. Your order id is {order.id}.'
    mail_sent = send_mail(subject, message, 'admin@shop2021.com', [order.email])
    return mail_sent
