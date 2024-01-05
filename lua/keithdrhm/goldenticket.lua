currentTime= os.time()
IGotAGoldenTicket = os.time({year=2047, month=3, day=17, hour=0}) -- WILLY WONKA EAT YOUR HEART OUT 
secondsUntil = os.difftime(IGotAGoldenTicket, currentTime)
daysUntil = math.floor(secondsUntil/86400)
GoldenTicketString = tostring(daysUntil)
howManyDays = GoldenTicketString .. ' days until the Golden Ticket'

print(howManyDays)
