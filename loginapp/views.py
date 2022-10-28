from django.shortcuts import render
from django.http import HttpResponse


def user(request):
    user=request.POST.get("username")
    pwd=request.POST.get("password")
    if request.method=="POST":
        if user=="kalai" and pwd=="123":
         return render(request,'kanini.html',{'logout':''})
        elif user=="Renu" and pwd=="567":
          return render(request,'kanini.html',{'logout':''})
        elif user=="Nandhini" and pwd=="911":
          return render(request,'kanini.html',{'logout':''})
        else:  
          return render(request,'login.html',{'error': ' Enter a valid Username and Password'})
    else:
        return render(request,'login.html')
