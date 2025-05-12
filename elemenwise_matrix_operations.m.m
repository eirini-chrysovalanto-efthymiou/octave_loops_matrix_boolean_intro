
function matrixOperationsDemo()
    % Function that asks the user to input a matrix,
    % calculates the cos of each element,
    % creates a new matrix with cos for even and sin for odd elements,
    % second matrix with cos only in the area 1:2,1:4,
    % calculates f(x) = sin(x) + cos(x^2) for each element,
    % and finds max, min and their positions.

    % Ask for matrix dimensions
    rows = input('Enter the number of rows: ');
    cols = input('Enter the number of columns: ');

    % Initialize matrix
    matrix = zeros(rows, cols);

    % Input elements from the user
    fprintf('Enter matrix elements:\n');
    for i = 1:rows
        for j = 1:cols
            prompt = sprintf('Enter element at position (%d, %d): ', i, j);
            matrix(i, j) = input(prompt);
        end
    end

    % Calculate cos of each element
    new_matrix = cos(matrix);

    % Create first new matrix with cos for even and sin for odd elements
    new_matrix1 = zeros(rows, cols);
    for i = 1:rows
        for j = 1:cols
            val = matrix(i,j);
            if mod(val,2) == 0  % even number
                new_matrix1(i,j) = cos(val);
            else                % odd number
                new_matrix1(i,j) = sin(val);
            end
        end
    end

    % Create second new matrix copying the original
    new_matrix2 = matrix;

    % Area to calculate cos (rows 1 to 2, columns 1 to 4)
    row_range = 1:min(2, rows);
    col_range = 1:min(4, cols);

    % Calculate cos only in the selected area
    for i = row_range
        for j = col_range
            new_matrix2(i,j) = cos(matrix(i,j));
        end
    end

    % Calculate f(x) = sin(x) + cos(x^2) for each element
    fx_matrix = zeros(rows, cols);
    for i = 1:rows
        for j = 1:cols
            x = matrix(i,j);
            fx_matrix(i,j) = sin(x) + cos(x^2);
        end
    end

    % Find max and min elements and their positions
    [max_val, max_idx] = max(matrix(:));
    [min_val, min_idx] = min(matrix(:));
    [max_row, max_col] = ind2sub(size(matrix), max_idx);
    [min_row, min_col] = ind2sub(size(matrix), min_idx);

    % Display matrices
    fprintf('\n=== Original Matrix ===\n');
    disp(matrix);

    fprintf('\n=== Matrix with cos of each element ===\n');
    disp(new_matrix);

    fprintf('\n=== New Matrix 1 (cos for even, sin for odd) ===\n');
    disp(new_matrix1);

    fprintf('\n=== New Matrix 2 (cos only in area 1:2,1:4) ===\n');
    disp(new_matrix2);

    fprintf('\n=== Matrix f(x) = sin(x) + cos(x^2) ===\n');
    disp(fx_matrix);

    % Display max and min
    fprintf('\nMaximum element: %g at position (%d, %d)\n', max_val, max_row, max_col);
    fprintf('Minimum element: %g at position (%d, %d)\n', min_val, min_row, min_col);
end




 
