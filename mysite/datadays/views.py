from django.http import HttpResponse, JsonResponse
from .models import Person

def index(request):
    print(request.POST)
    if request.method == 'POST':
        person = Person(name=request.POST['name'], age=request.POST['age'])
        person.create()
    elif request.method == 'GET':
        persons = list(Person.objects.all())
        return JsonResponse(persons, safe=False)

