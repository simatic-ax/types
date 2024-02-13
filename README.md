# @simatic-ax/types

## Description

This package contains a collection of structured data types for specific applications. This includes types for hardware components that are available inside the SIMATIC ecosystem and standardized communication types.

Currently, there are data types available for the following:

- Modules for the ET 200MP distributed IO system
- Modules for the ET 200SP distributed IO system
- Modules for IO modules of the SIMATIC S7-1500 compact PLC
- PROFIDrive standard telegrams and Siemens-specific PROFIDrive telegrams

This library is originally derived from the library of PLC data types (LPD), available in the Siemens online support ([link](https://support.industry.siemens.com/cs/document/109482396/))

## Install this package

Enter:

```cli
apax add @simatic-ax/types
```

## Namespace

There is a main namespace of this library as well as two sub-namespaces. The main namespace is

```iec-st
Simatic.Ax.Types;
```

The sub-namespace for data types without relative address offsets is

```iec-st
Simatic.Ax.Types.NoOffset;
```

The sub-namespace for the same data types with added relative address offsets is

```iec-st
Simatic.Ax.Types.WithOffset;
```

## How to use the types

1. Add the package to your repository as a dependency
2. Depending on if you want to use the data type with or without offsets, add either

    ```iec-st
    USING Simatic.Ax.Types.WithOffset;
    ```

    or

    ```iec-st
    USING Simatic.Ax.Types.NoOffset;
    ```

    to the file where you want to use the data type
3. Use the data type in your project as if you would have created it in your project

## Contribution

Thanks for your interest in contributing. Anybody is free to report bugs, unclear documentation, and other problems regarding this repository in the Issues section or, even better, is free to propose any changes to this repository using Merge Requests.

If you think, that important data types for other devices or standards are missing, don’t hesitate to ask us for adding them, or add them yourself.

## License and Legal information

Please read the [Legal information](LICENSE.md)
