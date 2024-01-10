currentTime= os.time()
IGotAGoldenTicket = os.time({year=2047, month=3, day=17, hour=0}) -- WILLY WONKA EAT YOUR HEART OUT 
secondsUntil = os.difftime(IGotAGoldenTicket, currentTime)
daysUntil = math.floor(secondsUntil/86400)
weeksUntil = daysUntil/7 
gallonsUntil = weeksUntil*10.5
GoldenTicketString = tostring(daysUntil)
GallonString = tostring(gallonsUntil)
howManyDays = GoldenTicketString .. ' days until the Golden Ticket'
howManyGallons = GallonString .. ' gallons of gas until Golden Ticket'

print(howManyDays)
print(howManyGallons)
