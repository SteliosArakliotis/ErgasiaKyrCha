Feature: Πίνακας

Background:
Δεδομένου ότι ο χρήστης είναι συνδεδεμένος με τον λογαριασμό του.


Scenario: Αυτόματη Αρχική Σελίδα Πίνακα
    	Given Βρίσκομαι στην αρχική σελίδα του Πίνακα μου
	Then Εμφανίζονται αυτόματα οι Top Rated Λίστες του τελευταίου 24ώρου	

Scenario: Εμφάνιση Top rated ανά ημέρα
    	Given Βρίσκομαι στην αρχική σελίδα του Πίνακα μου
	When πατήσω το κουμπί "Top Rated"
	Then Εμφανίζεται το αναπτυσομένο παράθυρο με τις επιλογές "Σήμερα", "Μήνας", "Φέτος"  
	When πατήσω το κουμπί "Σήμερα"
	Then Εμφανίζονται οι Top Rated Λίστες του τελευταίου 24ώρου	

Scenario: Εμφάνιση Top rated για τον μήνα
    	Given Βρίσκομαι στην αρχική σελίδα του Πίνακα μου	
	When πατήσω το κουμπί "Top Rated"
	Then Εμφανίζεται το αναπτυσομένο παράθυρο με τις επιλογές "Σήμερα", "Μήνας", "Φέτος"  
	When πατήσω το κουμπί "Μήνας"
	Then Εμφανίζονται οι Top Rated Λίστες ολόκληρου του μήνα
	
Scenario: Εμφάνιση Top rated για το χρόνο
    	Given Βρίσκομαι στην αρχική σελίδα του Πίνακα μου	
	When πατήσω το κουμπί "Top Rated"
	Then Εμφανίζεται το αναπτυσομένο παράθυρο με τις επιλογές "Σήμερα", "Μήνας", "Φέτος"  
	When πατήσω το κουμπί "Φέτος"
	Then Εμφανίζονται οι Top Rated Λίστες ολόκληρου του χρόνου
