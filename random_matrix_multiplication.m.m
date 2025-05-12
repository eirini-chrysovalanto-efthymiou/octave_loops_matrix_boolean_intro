
% Program to Create and Display a Random Matrix

% Ask the user for the size of the matrix
rows = input('Enter the number of rows: ');
cols = input('Enter the number of columns: ');

% Create a random matrix n x n with values in the range [0,1]
randomMatrix = rand(rows, cols);

% Function to print a matrix with formatting
function printMatrix(matrix)
    [rows, cols] = size(matrix);

    % Print column headers
    fprintf('      ');
    for c = 1:cols
        fprintf('%8d', c);
    end
    fprintf('\n');

    % Separator line
    fprintf('     ');
    for c = 1:cols
        fprintf('--------');
    end
    fprintf('\n');

    % Print rows with row number and elements
    for r = 1:rows
        fprintf('%4d |', r);
        for c = 1:cols
            fprintf('%8.4f', matrix(r,c)); % 4 decimal places, right aligned
        end
        fprintf('\n');
    end
end

% Call the print function
fprintf('\nRandom %dx%d matrix:\n\n', rows, cols);
printMatrix(randomMatrix);

       
