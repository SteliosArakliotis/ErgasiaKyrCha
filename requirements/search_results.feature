Feature : Αποτελέσματα αναζήτησης λιστών

Δεδομένου οτι είμαστε στη σελίδα "Αποτελέσματα αναζήτησης λιστών"

  Scenario: Εμφάνιση περισσότερων αποτελεσμάτων 
		When πατήσω "Εμφάνιση περισσότερων αποτελεσμάτων"
		Then Θα εμφανίζονται περισσότερα αποτελέσματα για τη λέξη που γίνεται αναζήτηση
		
		
	Scenario: Προσπάθεια νέας αναζήτησης
		When πατήσω "Νέα αναζήτηση"
		Then μεταβαίνω στη σελίδα "πίνακας" όπου βρίσκεται το πλάισιο για αναζήτηση.
		
		
