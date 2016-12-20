Feature: Αναζήτηση

	Background:
	Δεδομένου ότι βρισκόμαστε στον Πίνακα.

	Scenario: Αναζήτηση Χρηστών 
		When πατήσω "Αναζήτηση"
		Then Θα εμφανίζεται πεδίο αναζήτησης μαζί με επιλογές "Άτομα", "Λίστες", "Περιεχόμενο"
		When επιλέγω "Άτομα"
		And εισάγω κείμενο με πιθανό Όνομα Χρήστη 
		When το κείμενο ταυτίζεται με Όνομα χρήστη 
		Then εμφανίζεται η σελίδα προφίλ του
		

	Scenario: Αποτυχία αναζήτησης Χρηστών 
		When πατήσω "Αναζήτηση"
		Then Θα εμφανίζεται πεδίο αναζήτησης μαζί με επιλογές "Άτομα", "Λίστες", "Περιεχόμενο"
		When επιλέγω "Άτομα"
		And εισάγω κείμενο με πιθανό Όνομα Χρήστη 
		When το κείμενο δεν ταυτίζεται με Όνομα χρήστη 
		Then εμφανίζεται "ο Χρήστης δεν βρέθηκε"


	Scenario: Αναζήτηση Λίστας
		When πατήσω "Αναζήτηση"
		Then Θα εμφανίζεται πεδίο αναζήτησης μαζί με επιλογές "Άτομα", "Λίστες", "Περιεχόμενο"
		When επιλέγω "Λιστα"
		And εισάγω κείμενο με πιθανή Λίστα
		When το κείμενο ταυτίζεται με Λίστες
		Then εμφανίζονται οι σχετικές Λίστες 
		
		
	Scenario: Ανεπιτυχής Αναζήτηση Λίστας
		When πατήσω "Αναζήτηση"
		Then Θα εμφανίζεται πεδίο αναζήτησης μαζί με επιλογές "Άτομα", "Λίστες", "Περιεχόμενο"
		When επιλέγω "Λιστα"
		And εισάγω κείμενο με πιθανή Λίστα
		When το κείμενο δεν ταυτίζεται με Λίστες
		Then εμφανίζεται το μήνυμα "Δεν βρέθηκαν σχετικές Λίστες" 	
		
		
	Scenario: Αναζήτηση Περιεχομένου
		When πατήσω "Αναζήτηση"
		Then Θα εμφανίζεται πεδίο αναζήτησης μαζί με επιλογές "Άτομα", "Λίστες", "Περιεχόμενο"
		When επιλέγω "Περιεχόμενο"
		And εισάγω κείμενο με πιθανό Περιεχόμενο
		When το κείμενο ταυτίζεται με Περιεχόμενο
		Then εμφανίζονται τα σχετικά Περιεχόμενα 
		
		
	Scenario: Ανεπιτυχής Αναζήτηση Περιεχομένου
		When πατήσω "Αναζήτηση"
		Then Θα εμφανίζεται πεδίο αναζήτησης μαζί με επιλογές "Άτομα", "Λίστες", "Περιεχόμενο"
		When επιλέγω "Περιεχόμενο"
		And εισάγω κείμενο με πιθανό Περιεχόμενο
		When το κείμενο δεν ταυτίζεται με Περιεχόμενο
		Then εμφανίζεται το μήνυμα "Δεν βρέθηκαν σχετικές Περιεχόμενα" 
		
		
		
		




