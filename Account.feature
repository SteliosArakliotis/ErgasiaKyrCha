Feature:Λογαριασμός


	Background:
	Δεδομένου ότι βρισκόμαστε στην Αρχική σελίδα.

	Scenario: Νέος Λογαριασμός
		Given Δεν έχω λογαριασμό 
		When πατήσω "Δημιουργία Λογαριασμού"
		Then Θα πρέπει να εισάγω Όνομα Χρήστη, Email και Κωδικό Πρόσβασης   
		And Έχει γίνει σωστή εισαγωγή στοιχείων 
		Then Εμφανίζεται το μήνυμα "Επιτυχής νέος Λογαριασμός"
		
	Scenario:  Αποτυχία δημιουργίας νέου Λογαριασμού
		Given Δεν έχω λογαριασμό 
		When πατήσω "Δημιουργία Λογαριασμού"
		Then Θα πρέπει να εισάγω Όνομα Χρήστη, Email και Κωδικό Πρόσβασης   
		And Έχει γίνει λανθασμένη εισαγωγή στοιχείων 
		Then Εμφανίζεται το μήνυμα "Αποτυχία δημιουργίας νέου λογαριασμού.Προσπαθείστε ξανά"
		And Θα εμφανίζεται εισαγωγή  Ονόματος Χρήστη, Email και Κωδικού Πρόσβασης 
		
	Scenario:  Σύνδεση Χρήστη 
		Given Εχω λογαριασμό 
		When πατήσω "Σύνδεση "
		Then Θα πρέπει να εισάγω Όνομα Χρήστη και Κωδικό Πρόσβασης   
		And Έχει γίνει σωστή εισαγωγή στοιχείων 
		Then Εμφανίζεται το μήνυμα "Καλωσήρθες"
		And Θα πρέπει να εμφανίζεται η αρχική κεντρική σελίδα Χρήστη (Πίνακας) 	
		
	
	Scenario: Αποτυχία Σύνδεση Χρήστη 
		Given Εχω λογαριασμό 
		When πατήσω "Σύνδεση"
		Then Θα πρέπει να εισάγω Όνομα Χρήστη και Κωδικό Πρόσβασης   
		And Έχει γίνει λανθασμένη εισαγωγή στοιχείων 
		Then Εμφανίζεται το μήνυμα "Λάθος Εισαγωγή Στοιχείων"
		And Θα πρέπει να εμφανίζεται η εισαγωγή Ονόματος Χρήστη και Κωδικού Πρόσβασης   		
		
	Scenario: Υπενθύμιση Κωδικού Πρόσβασης
		Given Εχω λογαριασμό 
		When πατήσω "Σύνδεση"
		Then Θα πρέπει να εισάγω Όνομα Χρήστη   
		And Πατήσω το κουμπί "Ξέχασα τον κωδικό μου"  
		Then Στέλνεται νέος κωδικός στο υπάρχων email
		And  Εμφανίζεται το μήνυμα "Ο νέος κωδικος στάλθηκε στο email σας"

