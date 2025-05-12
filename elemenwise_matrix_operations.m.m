

function matrixOperationsDemo()
    % Συνάρτηση που ζητάει από τον χρήστη να εισάγει έναν πίνακα,
    % υπολογίζει το cos κάθε στοιχείου,
    % δημιουργεί νέο πίνακα με cos για άρτια και sin για περιττά στοιχεία,
    % δεύτερο πίνακα με cos μόνο σε περιοχή 1:2,1:4,
    % υπολογίζει f(x) = sin(x) + cos(x^2) για κάθε στοιχείο,
    % και βρίσκει μέγιστο, ελάχιστο και τις θέσεις τους.

    % Ζητάμε διαστάσεις πίνακα
    rows = input('Δώσε τον αριθμό των γραμμών: ');
    cols = input('Δώσε τον αριθμό των στηλών: ');

    % Αρχικοποίηση πίνακα
    matrix = zeros(rows, cols);

    % Εισαγωγή στοιχείων από τον χρήστη
    fprintf('Εισαγωγή στοιχείων πίνακα:\n');
    for i = 1:rows
        for j = 1:cols
            prompt = sprintf('Εισαγωγή στοιχείου στη θέση (%d, %d): ', i, j);
            matrix(i, j) = input(prompt);
        end
    end

    % Υπολογισμός του cos κάθε στοιχείου
    new_matrix = cos(matrix);

    % Δημιουργία πρώτου νέου πίνακα με cos για άρτια και sin για περιττά στοιχεία
    new_matrix1 = zeros(rows, cols);
    for i = 1:rows
        for j = 1:cols
            val = matrix(i,j);
            if mod(val,2) == 0  % άρτιος αριθμός
                new_matrix1(i,j) = cos(val);
            else                % περιττός αριθμός
                new_matrix1(i,j) = sin(val);
            end
        end
    end

    % Δημιουργία δεύτερου νέου πίνακα που αντιγράφει τον αρχικό
    new_matrix2 = matrix;

    % Περιοχή που θα υπολογίσουμε το cos (γραμμές 1 έως 2, στήλες 1 έως 4)
    row_range = 1:min(2, rows);
    col_range = 1:min(4, cols);

    % Υπολογισμός cos μόνο στην επιλεγμένη περιοχή
    for i = row_range
        for j = col_range
            new_matrix2(i,j) = cos(matrix(i,j));
        end
    end

    % Υπολογισμός f(x) = sin(x) + cos(x^2) για κάθε στοιχείο
    fx_matrix = zeros(rows, cols);
    for i = 1:rows
        for j = 1:cols
            x = matrix(i,j);
            fx_matrix(i,j) = sin(x) + cos(x^2);
        end
    end

    % Εύρεση μέγιστου και ελαχίστου στοιχείου και θέσεων τους
    [max_val, max_idx] = max(matrix(:));
    [min_val, min_idx] = min(matrix(:));
    [max_row, max_col] = ind2sub(size(matrix), max_idx);
    [min_row, min_col] = ind2sub(size(matrix), min_idx);

    % Εμφάνιση πινάκων
    fprintf('\n=== Αρχικός Πίνακας ===\n');
    disp(matrix);

    fprintf('\n=== Πίνακας με cos κάθε στοιχείου ===\n');
    disp(new_matrix);

    fprintf('\n=== Νέος Πίνακας 1 (cos για άρτια, sin για περιττά) ===\n');
    disp(new_matrix1);

    fprintf('\n=== Νέος Πίνακας 2 (cos μόνο σε περιοχή 1:2,1:4) ===\n');
    disp(new_matrix2);

    fprintf('\n=== Πίνακας f(x) = sin(x) + cos(x^2) ===\n');
    disp(fx_matrix);

    % Εμφάνιση μέγιστου και ελαχίστου
    fprintf('\nΜέγιστο στοιχείο: %g στη θέση (%d, %d)\n', max_val, max_row, max_col);
    fprintf('Ελάχιστο στοιχείο: %g στη θέση (%d, %d)\n', min_val, min_row, min_col);
end

