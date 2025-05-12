
% Πρόγραμμα Δημιουργίας και Εμφάνισης Τυχαίου Πίνακα

% Ζητάμε από τον χρήστη το μέγεθος του πίνακα
n = input('Δώσε το μέγεθος του τυχαίου πίνακα (π.χ. 5): ');

% Δημιουργία τυχαίου πίνακα n x n με τιμές στο διάστημα [0,1]
randomMatrix = rand(n, n);

% Συνάρτηση για εκτύπωση πίνακα με μορφοποίηση
function printMatrix(matrix)
    [rows, cols] = size(matrix);

    % Εκτύπωση κεφαλίδας στηλών
    fprintf('      ');
    for c = 1:cols
        fprintf('%8d', c);
    end
    fprintf('\n');

    % Διαχωριστική γραμμή
    fprintf('     ');
    for c = 1:cols
        fprintf('--------');
    end
    fprintf('\n');

    % Εκτύπωση γραμμών με αριθμό γραμμής και στοιχεία
    for r = 1:rows
        fprintf('%4d |', r);
        for c = 1:cols
            fprintf('%8.4f', matrix(r,c)); % 4 δεκαδικά ψηφία, στοίχιση δεξιά
        end
        fprintf('\n');
    end
end

% Κλήση της συνάρτησης εκτύπωσης
fprintf('\nΤυχαίος πίνακας %dx%d:\n\n', n, n);
printMatrix(randomMatrix);

