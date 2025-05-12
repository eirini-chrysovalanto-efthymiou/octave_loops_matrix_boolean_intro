
% Program to Create and Display a Random Matrix

% Ask the user for the size of the matrix
n = input('Enter the size of the random matrix (e.g. 5): ');

% Create a random n x n matrix with values in the range [0,1]
randomMatrix = rand(n, n);

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
fprintf('\nRandom %dx%d matrix:\n\n', n, n);
printMatrix(randomMatrix);

  
