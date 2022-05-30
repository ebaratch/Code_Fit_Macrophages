% Sets the models for OBL/OCL/Bone/Mac/Mono dynamics, as structures
% containing relevant fields (results folder, initial parameter sets for calibration, parameter space, optimization method,...)




Assumption111.model=@(param,temps) Assumption111(param,temps,paramFixed);
Assumption111.folder='Assumption111';
Assumption111.modelName='Assumption111';
Assumption111.param0=[ 2.860203e-02 2.665341e-02 2.451177e-19 1.122521e+05 4.973078e-01 9.870274e-01 2.421421e-02 4.551054e-25 4.690148e-39 5.596002e-01 1.817511e-25 2.020220e-06 1.381467e-20 5.383073e-11 9.998214e+03 2.289711e-12 4.717111e-42 1.684659e-02 1.028236e+03 3.917060e-23]
Assumption111.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption111.UpBounds=[100 10000 10 200000 100 1000 1 3000 100000 10 0.005 0.05 0.01 1000 10000 1 0.001 1 2000 1000000];
Assumption111.fitMethod='fminsearchPenal';
Assumption111.MaxIter=2500;
Assumption111.MaxFunEvals=5000;
Assumption111.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption111.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption111.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption111.VariablesPred={'Bone Volume'};
Assumption111.VariablesPredUnits={'Cubic milimeters'};
Assumption111.ColorsPred={[0,0,0]};
Assumption111.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption111.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption111.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};




Assumption112.model=@(param,temps) Assumption112(param,temps,paramFixed);
Assumption112.folder='Assumption112';
Assumption112.modelName='Assumption112';
Assumption112.param0=[ 8.157146e-01 3.935664e+01 2.092450e-01 3.404716e-34 7.455981e+02 3.396424e-07 3.889744e-01 1.304321e-06 4.086321e+04 4.410848e-55 1.731955e-14 4.586328e-14 4.049383e-08 1.617636e+04 2.515833e-01 2.341452e+01 5.321805e-10 1.432574e-04 1.203930e-10 9.394147e-03]
Assumption112.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption112.UpBounds=[100 100 10 20000 1000 1000 1 3000 100000 10 0.005 0.05 0.01 200000 100000 3000 1 1 1 1];
Assumption112.fitMethod='fminsearchPenal';
Assumption112.MaxIter=2500;
Assumption112.MaxFunEvals=5000;
Assumption112.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption112.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption112.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption112.VariablesPred={'Bone Volume'};
Assumption112.VariablesPredUnits={'Cubic milimeters'};
Assumption112.ColorsPred={[0,0,0]};
Assumption112.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption112.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption112.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};




Assumption113.model=@(param,temps) Assumption113(param,temps,paramFixed);
Assumption113.folder='Assumption113';
Assumption113.modelName='Assumption113';
Assumption113.param0=[ 8.769350e-02 1.7335 3.186271e-18 1.930729e-25 4.859391e-01 4.204563e+05 2.218991e-02 1.790154e-15 4.256438e-13 2.657172e-15 9.515548e-01 6.145817e-12 1.153491e+04 1.054234e-06 1.205894e-19 1.037790e-23 6.215465e-03 4.514965e-04]
Assumption113.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption113.UpBounds=[100 1000 10 20000 100 1000000 1 3000 10 0.005 10 0.01 200000 1000 1 0.001 1 1];
Assumption113.fitMethod='fminsearchPenal';
Assumption113.MaxIter=2500;
Assumption113.MaxFunEvals=5000;
Assumption113.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption113.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption113.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption113.VariablesPred={'Bone Volume'};
Assumption113.VariablesPredUnits={'Cubic milimeters'};
Assumption113.ColorsPred={[0,0,0]};
Assumption113.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption113.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption113.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};





Assumption121.model=@(param,temps) Assumption121(param,temps,paramFixed);
Assumption121.folder='Assumption121';
Assumption121.modelName='Assumption121';
Assumption121.param0=[ 1.210655e-02 0.0036 8.776647e-32 1.698093e+05 3.417101e-01 1.483482e+00 5.615942e-02 3.157661e-22 1.015401e-22 4.940310e-01 8.730145e-30 9.6306e-04 1.339349e-17 4.478695e-14 9.999978e+03 6.438470e-07 5.285549e-22 7.535846e-03 1.061254e+03 2.226624e-30]
Assumption121.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption121.UpBounds=[100 10000 10 200000 100 1000 1 3000 100000 10 0.005 0.05 0.01 1000 10000 1 0.001 1 2000 1000000];
Assumption121.fitMethod='fminsearchPenal';
Assumption121.MaxIter=2500;
Assumption121.MaxFunEvals=5000;
Assumption121.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption121.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption121.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption121.VariablesPred={'Bone Volume'};
Assumption121.VariablesPredUnits={'Cubic milimeters'};
Assumption121.ColorsPred={[0,0,0]};
Assumption121.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption121.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption121.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption122.model=@(param,temps) Assumption122(param,temps,paramFixed);
Assumption122.folder='Assumption122';
Assumption122.modelName='Assumption122';
Assumption122.param0=[ 4.316672e-02 2.755300e-10 2.139222e-01 5.342090e-70 1.204089e+00 2.730857e+02 1.071949e+00 4.756908e+03 1.554921e+06 5.064390e-58 1.752725e-29 1.509811e-20 7.772952e-38 1.405681e+04 2.293128e-108 3.397585e+04 1.400329e-85 5.353163e+03 1.332937e-42 5.104309e-04]
Assumption122.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption122.UpBounds=[100 100 10 20000 100 1000 1 3000 1000000 10 0.005 0.05 0.01 200000 1 100000 1 1000000 1 1];
Assumption122.fitMethod='fminsearchPenal';
Assumption122.MaxIter=2500;
Assumption122.MaxFunEvals=5000;
Assumption122.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption122.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption122.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption122.VariablesPred={'Bone Volume'};
Assumption122.VariablesPredUnits={'Cubic milimeters'};
Assumption122.ColorsPred={[0,0,0]};
Assumption122.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption122.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption122.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};




Assumption123.model=@(param,temps) Assumption123(param,temps,paramFixed);
Assumption123.folder='Assumption123';
Assumption123.modelName='Assumption123';
Assumption123.param0=[ 1.027302e-01 3.788840e-04 1.056542e-25 2.913663e-27 6.166978e-01 3.435978e+05 3.607183e-02 4.484702e-15 1.564947e-08 3.622003e-17 3.541780e-08 1.921787e-13 1.151762e+04 9.592336e-07 1.992074e-24 2.108016e-30 1.077857e-02 8.595421e-04]
Assumption123.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption123.UpBounds=[100 1000 10 20000 100 1000000 1 3000 10 0.005 10 0.01 200000 1000 1 0.001 1 1];
Assumption123.fitMethod='fminsearchPenal';
Assumption123.MaxIter=2500;
Assumption123.MaxFunEvals=5000;
Assumption123.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption123.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption123.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption123.VariablesPred={'Bone Volume'};
Assumption123.VariablesPredUnits={'Cubic milimeters'};
Assumption123.ColorsPred={[0,0,0]};
Assumption123.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption123.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption123.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};




Assumption212.model=@(param,temps) Assumption212(param,temps,paramFixed);
Assumption212.folder='Assumption212';
Assumption212.modelName='Assumption212';
Assumption212.param0=[ 1.572725e+00 9.669628e+02 1.128535e-02 1.514004e+05 1.075435e+00 7.827237e+00 6.233395e-01 1.485947e+03 1.226978e-14 2.238241e-72 2.312106e-60 1.812085e-45 2.037480e-07 1.205456e+04 2.744876e-48 7.745653e-01 4.238097e-46 4.022517e-06 3.454833e+01 6.208361e+03]
Assumption212.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption212.UpBounds=[100 1000 10 2000000 100 1000 10 10000 100000 10 0.01 0.01 0.01 1000000 1000 10 0.1 1 1000000 200000];
Assumption212.fitMethod='fminsearchPenal';
Assumption212.MaxIter=2500;
Assumption212.MaxFunEvals=5000;
Assumption212.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption212.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption212.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption212.VariablesPred={'Bone Volume'};
Assumption212.VariablesPredUnits={'Cubic milimeters'};
Assumption212.ColorsPred={[0,0,0]};
Assumption212.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption212.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption212.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};


Assumption211.model=@(param,temps) Assumption211(param,temps,paramFixed);
Assumption211.folder='Assumption211';
Assumption211.modelName='Assumption211';
Assumption211.param0=[ 1.744741e+01 3.604722e+02 1.002730e-29 1.908090e+04 3.446394e-01 4.505121e+01 1.840340e-01 2.050008e-25 5.542090e-45 8.649829e-50 1.936335e-64 3.482954e-27 9.664667e-08 9.995875e-01 6.282747e-60 1.982129e-02 3.363317e-85 9.522258e-05 5.163103e+02 1.942099e+04]
Assumption211.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption211.UpBounds=[100 2000 10 20000 100 1000 10 3000 100000 100 0.01 0.01 0.01 1 1000 1 0.001 1 1000000 200000];
Assumption211.fitMethod='fminsearchPenal';
Assumption211.MaxIter=2500;
Assumption211.MaxFunEvals=5000;
Assumption211.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption211.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption211.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption211.VariablesPred={'Bone Volume'};
Assumption211.VariablesPredUnits={'Cubic milimeters'};
Assumption211.ColorsPred={[0,0,0]};
Assumption211.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption211.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption211.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption213.model=@(param,temps) Assumption213(param,temps,paramFixed);
Assumption213.folder='Assumption213';
Assumption213.modelName='Assumption213';
Assumption213.param0=[ 7.501420e-01 1.160306e+03 1.492646e-22 3.659469e-96 8.511378e-02 3.712964e-122 1.023199e-40 5.821443e-26 1.104966e-38 7.208151e-08 1.775046e+04 6.900693e+00 1.294521e+00 1.315034e-01 1.670665e-80 4.337456e-42 7.583474e+03]
Assumption213.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption213.UpBounds=[100 10000 50 20000 1000 3000 10 1 1 0.05 1000000 1000000 1000 10 0.001 1 100000];
Assumption213.fitMethod='fminsearchPenal';
Assumption213.MaxIter=25000;
Assumption213.MaxFunEvals=50000;
Assumption213.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption213.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption213.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption213.VariablesPred={'Bone Volume'};
Assumption213.VariablesPredUnits={'Cubic milimeters'};
Assumption213.ColorsPred={[0,0,0]};
Assumption213.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption213.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption213.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption221.model=@(param,temps) Assumption221(param,temps,paramFixed);
Assumption221.folder='Assumption221';
Assumption221.modelName='Assumption221';
Assumption221.param0=[ 1.116680e+01 2.439916e+00 2.552998e-01 5.722333e+03 5.370701e-01 2.309249e+01 1.110333e-21 3.694491e-24 8.436211e-27 6.607791e-25 2.952167e-61 1.407027e-54 7.949426e-08 5.887354e-33 2.055898e-03 6.408680e-02 1.604991e-80 1.176921e-02 7.541011e+02 2.017369e+04]
Assumption221.paramNames={'$deltaOC$','gammaOB','deltaD','monoInflux1','Infl1','Infl2','AntiInfl','depol1','depol2','depol3','TNF','OSM','deltaBFixed','Factor1','Factor2','deltaOB','deltaTNF','OBInh','Fatcor3','monoInflux2'};
Assumption221.Units={'$\left[cell^{-1}day^{-1}\right]$','$\left[day^{-1}\right]$','$\left[day\right]$','cell^{-1}','$\left[day^{-1}\right]$','$\left[cellscell^{-1}day^{-1}\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$','$\left[day\right]$'};
Assumption221.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption221.UpBounds=[100 2000 10 20000 100 1000 10 3000 100000 100 0.01 0.01 0.01 1 1000 1 0.001 5 1000000 200000];
Assumption221.fitMethod='fminsearchPenal';
Assumption221.MaxIter=2500;
Assumption221.MaxFunEvals=5000;
Assumption221.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption221.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption221.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption221.VariablesPred={'Bone Volume'};
Assumption221.VariablesPredUnits={'Cubic milimeters'};
Assumption221.ColorsPred={[0,0,0]};
Assumption221.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption221.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption221.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption222.model=@(param,temps) Assumption222(param,temps,paramFixed);
Assumption222.folder='Assumption222';
Assumption222.modelName='Assumption222';
Assumption222.param0=[ 2.854279e+00 2.499297e+00 1.150194e-01 1.942420e+05 1.634025e+00 1.593691e+01 1.005719e+00 1.737441e+03 2.288200e+01 1.078952e-102 6.364119e-76 6.208924e-66 8.545455e-08 6.914373e+03 2.107193e-70 8.058867e-02 3.454920e-57 1.302486e-06 6.036114e+01 3.270025e+03]
Assumption222.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption222.UpBounds=[100 1000 10 2000000 100 1000 10 10000 100000 10 0.01 0.01 0.01 1000000 1000 10 0.1 1 1000000 200000];
Assumption222.fitMethod='fminsearchPenal';
Assumption222.MaxIter=2500;
Assumption222.MaxFunEvals=5000;
Assumption222.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption222.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption222.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption222.VariablesPred={'Bone Volume'};
Assumption222.VariablesPredUnits={'Cubic milimeters'};
Assumption222.ColorsPred={[0,0,0]};
Assumption222.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption222.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption222.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption223.model=@(param,temps) Assumption223(param,temps,paramFixed);
Assumption223.folder='Assumption223';
Assumption223.modelName='Assumption223';
Assumption223.param0=[ 6.775449e-01 1.096078e+01 1.748208e+01 7.829700e+04 8.807009e-22 2.471080e-96 1.749193e-48 1.669862e-03 1.078043e-57 8.069582e-07 6.385422e-05 6.092643e+01 9.516660e-02 2.147536e-01 7.558621e-84 1.961216e-05 7.604763e+05]
Assumption223.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption223.UpBounds=[100 100 50 200000 1000 3000 10 1 1 0.05 1000000 1000000 1000 10 0.001 1 1000000];
Assumption223.fitMethod='fminsearchPenal';
Assumption223.MaxIter=25000;
Assumption223.MaxFunEvals=50000;
Assumption223.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption223.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption223.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption223.VariablesPred={'Bone Volume'};
Assumption223.VariablesPredUnits={'Cubic milimeters'};
Assumption223.ColorsPred={[0,0,0]};
Assumption223.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption223.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption223.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};


Assumption311.model=@(param,temps) Assumption311(param,temps,paramFixed);
Assumption311.folder='Assumption311';
Assumption311.modelName='Assumption311';
Assumption311.param0=[ 3.328132e-02 8.690000e+01 1.730657e+00 3.811570e-33 1.003249e+01 9.496263e+01 1.571987e-02 1.461913e+03 1.037117e+04 1.058187e-01 3.402681e-34 5.399279e-44 4.076349e-07 2.177485e+04 6.590261e-112 3.054207e-06 7.572762e-02 5.043417e-03]
Assumption311.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption311.UpBounds=[100 1000 10 20000 100 1000 1 3000 100000 10 0.005 0.005 0.01 200000 1 1000 1 1];
Assumption311.fitMethod='fminsearchPenal';
Assumption311.MaxIter=2500;
Assumption311.MaxFunEvals=5000;
Assumption311.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption311.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption311.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption311.VariablesPred={'Bone Volume'};
Assumption311.VariablesPredUnits={'Cubic milimeters'};
Assumption311.ColorsPred={[0,0,0]};
Assumption311.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption311.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption311.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption312.model=@(param,temps) Assumption312(param,temps,paramFixed);
Assumption312.folder='Assumption312';
Assumption312.modelName='Assumption312';
Assumption312.param0=[ 5.285050e-02 2.793526e+02 8.729029e-01 1.201093e-24 9.025026e+00 4.261987e+01 1.307582e-01 1.183511e+03 6.487797e+03 1.479578e-31 2.919680e-03 7.048430e-03 3.800912e-07 1.862440e+04 9.392560e-102 4.478022e-06 1.519306e-01 1.293108e-02]
Assumption312.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption312.UpBounds=[1 1000 10 1 100 1000 1 10000 10000 0.01 1.441493e-01 5.767850e-01 1.744849e-01 1.872640e+05 2.304328e-68 1.188980e-03 1 1.681888e-01];
Assumption312.fitMethod='fminsearchPenal';
Assumption312.MaxIter=2500;
Assumption312.MaxFunEvals=5000;
Assumption312.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption312.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption312.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption312.VariablesPred={'Bone Volume'};
Assumption312.VariablesPredUnits={'Cubic milimeters'};
Assumption312.ColorsPred={[0,0,0]};
Assumption312.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption312.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption312.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption312Treatment.model=@(param,temps) Assumption312Treatment(param,temps,paramFixed);
Assumption312Treatment.folder='Assumption312Treatment';
Assumption312Treatment.modelName='Assumption312Treatment';
Assumption312Treatment.param0=[ 5.285050e-02 2.793526e+02 8.729029e-01 1.201093e-24 9.025026e+00 4.261987e+01 1.307582e-01 1.183511e+03 6.487797e+03 1.479578e-31 2.919680e-03 7.048430e-03 3.800912e-07 1.862440e+04 9.392560e-102 4.478022e-06 1.519306e-01 1.293108e-02]
Assumption312Treatment.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption312Treatment.UpBounds=[100 100 10 2000000 100 1000 1 10000 100000 10 0.01 0.01 0.01 200000 1 1000 1 1 100];
Assumption312Treatment.fitMethod='fminsearchPenal';
Assumption312Treatment.MaxIter=2500;
Assumption312Treatment.MaxFunEvals=5000;
Assumption312Treatment.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption312Treatment.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption312Treatment.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption312Treatment.VariablesPred={'Bone Volume'};
Assumption312Treatment.VariablesPredUnits={'Cubic milimeters'};
Assumption312Treatment.ColorsPred={[0,0,0]};
Assumption312Treatment.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption312Treatment.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption312Treatment.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption313.model=@(param,temps) Assumption313(param,temps,paramFixed);
Assumption313.folder='Assumption313';
Assumption313.modelName='Assumption313';
Assumption313.param0=[ 9.315666e-03 16.2653 3.850571e-10 3.332259e-17 2.483392e-01 1.357095e+03 2.394769e-18 7.049633e-19 1.082736e-02 1.630760e-08 1.188417e+04 1.635228e+03 1.111352e+04 9.525805e-02 6.811750e-09]
Assumption313.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption313.UpBounds=[100 1000 10 20000 10 30000 10 0.02 0.1 0.01 200000 50000 100000 10 1];
Assumption313.fitMethod='fminsearchPenal';
Assumption313.MaxIter=2500;
Assumption313.MaxFunEvals=5000;
Assumption313.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption313.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption313.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption313.VariablesPred={'Bone Volume'};
Assumption313.VariablesPredUnits={'Cubic milimeters'};
Assumption313.ColorsPred={[0,0,0]};
Assumption313.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption313.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption313.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};





Assumption321.model=@(param,temps) Assumption321(param,temps,paramFixed);
Assumption321.folder='Assumption321';
Assumption321.modelName='Assumption321';
Assumption321.param0=[ 4.494394e-02 8.272000e-01 2.284697e+00 1.588961e-34 6.683086e+00 1.213352e+02 1.725858e-02 1.422900e+03 8.935521e+03 2.926296e-02 7.020988e-60 2.568527e-45 2.147589e-07 3.122473e+04 3.442062e-92 2.013632e-07 2.906044e-02 7.248132e-03]
Assumption321.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption321.UpBounds=[100 100 10 20000 100 1000 1 3000 100000 10 0.005 0.005 0.01 200000 1 1000 1 1];
Assumption321.fitMethod='fminsearchPenal';
Assumption321.MaxIter=2500;
Assumption321.MaxFunEvals=5000;
Assumption321.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption321.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption321.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption321.VariablesPred={'Bone Volume'};
Assumption321.VariablesPredUnits={'Cubic milimeters'};
Assumption321.ColorsPred={[0,0,0]};
Assumption321.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption321.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption321.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption322.model=@(param,temps) Assumption322(param,temps,paramFixed);
Assumption322.folder='Assumption322';
Assumption322.modelName='Assumption322';
Assumption322.param0=[ 5.404042e-02 1.524600e+00 9.728055e-01 1.022138e-28 4.706172e+00 6.283596e+01 8.990680e-02 8.395732e+02 8.479449e+03 7.419368e-44 1.654524e-03 1.052547e-02 3.376973e-07 2.087496e+04 1.255227e-70 1.892962e-05 9.908979e-02 1.444534e-02]
Assumption322.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption322.UpBounds=[100 100 10 20000 100 1000 1 3000 100000 10 0.005 0.05 0.01 200000 1 1000 1 1];
Assumption322.fitMethod='fminsearchPenal';
Assumption322.MaxIter=2500;
Assumption322.MaxFunEvals=5000;
Assumption322.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption322.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption322.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption322.VariablesPred={'Bone Volume'};
Assumption322.VariablesPredUnits={'Cubic milimeters'};
Assumption322.ColorsPred={[0,0,0]};
Assumption322.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption322.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption322.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};





Assumption322Treatment.model=@(param,temps) Assumption322Treatment(param,temps,paramFixed);
Assumption322Treatment.folder='Assumption322Treatment';
Assumption322Treatment.modelName='Assumption322Treatment';
Assumption322Treatment.param0=[ 5.404042e-02 1.524600e+00 9.728055e-01 1.022138e-28 4.706172e+00 6.283596e+01 8.990680e-02 8.395732e+02 8.479449e+03 7.419368e-44 1.654524e-03 1.052547e-02 3.376973e-07 2.087496e+04 1.255227e-70 1.892962e-05 9.908979e-02 1.444534e-02];
Assumption322Treatment.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption322Treatment.UpBounds=[100 100 10 20000 100 1000 1 3000 100000 10 0.005 0.05 0.01 200000 1 1000 1 0.001 1];
Assumption322Treatment.fitMethod='fminsearchPenal';
Assumption322Treatment.MaxIter=2500;
Assumption322Treatment.MaxFunEvals=5000;
Assumption322Treatment.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption322Treatment.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption322Treatment.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption322Treatment.VariablesPred={'Bone Volume'};
Assumption322Treatment.VariablesPredUnits={'Cubic milimeters'};
Assumption322Treatment.ColorsPred={[0,0,0]};
Assumption322Treatment.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption322Treatment.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption322Treatment.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};



Assumption323.model=@(param,temps) Assumption323(param,temps,paramFixed);
Assumption323.folder='Assumption323';
Assumption323.modelName='Assumption323';
Assumption323.param0=[ 1.469289e-02 1.981000e+00 3.602474e-06 1.536330e-22 1.747645e-01 3.155272e+03 5.790664e-10 2.669172e-17 4.587844e-03 4.613368e-08 1.200802e+04 4.571945e+03 5.509252e+03 3.503865e-01 6.892336e-03]
Assumption323.LowBounds=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Assumption323.UpBounds=[100 100 10 20000 1 10000 10 0.02 0.02 0.01 200000 50000 10000 1 1];
Assumption323.fitMethod='fminsearchPenal';
Assumption323.MaxIter=100000;
Assumption323.MaxFunEvals=500000;
Assumption323.VariablesFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages'};
Assumption323.VariablesFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number'};
Assumption323.ColorsFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9]};
Assumption323.VariablesPred={'Bone Volume'};
Assumption323.VariablesPredUnits={'Cubic milimeters'};
Assumption323.ColorsPred={[0,0,0]};
Assumption323.VariablesNonFit={'Osteoblasts','Osteoclasts','Bone Volume','Monocytes','Macrophages','Pro-Inflammatory monocytes','Pro-Inflammatory macrophages','Anti-Inflammatory macrophages','Cellular debris'};
Assumption323.VariablesNonFitUnits={'Cell Number','Cell Number','Cubic milimeters','Cell Number','Cell Number','Cell Number','Cell Number','Cell Number','Volume'};
Assumption323.ColorsNonFit={[0.5,0.5,0.5],[0.9,0.5,0.1],[0,0,0],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.7,0.2],[0.5,0.2,0.9],[0.5,0.2,0.9],[0,0,0]};

