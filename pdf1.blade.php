<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New india tvm report</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th,
        td {
            width: 50%;
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        ul {
            line-height: 1.8;
            text-align: justify;
        }

        li {
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <div id="container" style="display: flex; justify-content: center;">
        <div>
            <div style="text-align: end;">
                <img src="image.png">
            </div>


            <table>
                <tr>
                    <th colspan="2" style="text-align: center; background-color: aquamarine;">
                        <p style="font-size: 25;">Investigation Report -{{$finalReport->insurance_com_name}}</p>
                    </th>
                </tr>
                <tr>
                    <td>Name of Customer</td>
                    <td>{{ $finalReport->customer_name ?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td>Contact Details of Customer</td>
                    <td><br>{{ $finalReport->customer_present_address ?? 'N/A' }}<br/>
                   
                        <br>Phone no:{{ $finalReport->customer_phone ?? 'N/A' }} <br>Email: {{ $finalReport->customer_email ?? 'N/A' }}
                    </td>
                </tr>

                 <tr>
                    <td>Policy Date</td>
                    <td>       
                    {{ $finalReport->customer_policy_start ? \Carbon\Carbon::parse($finalReport->customer_policy_start)->format('d-m-Y') : 'N/A' }} - 

                    {{ $finalReport->customer_policy_end ? \Carbon\Carbon::parse($finalReport->customer_policy_end)->format('d-m-Y') : 'N/A' }}
                    </td>
                </tr>


                 <tr>
                    <td>Policy No</td>
                    <td>{{ $finalReport->customer_policy_no ?? 'N/A' }}</td>
                </tr>

                 <tr>
                    <td>Crime Number</td>
                    <td>{{ $finalReport->crime_number ?? 'N/A' }}</td>
                </tr>

                  <tr>
                    <td>Police Station</td>
                    <td>{{ $finalReport->police_station ?? 'N/A' }}</td>
                </tr>

                  <tr>
                    <td>Case Type</td>
                    <td>{{ $finalReport->customer_insurance_type ?? 'N/A' }}</td>
                </tr>

                 <tr>
                    <td>Investigation Date</td>
                    <td>  {{ $finalReport->case_assign_date ? \Carbon\Carbon::parse($finalReport->case_assign_date)->format('d-m-Y') : 'N/A' }}</td>
                </tr>




            </table>
            <br>


            <table border="1">

                <!-- <tr>
                    <td>Claim No</td>
                    <td>MOT15119272</td>
                </tr>
                <tr>
                    <td>Interaction No.</td>
                    <td>NA</td>
                </tr> -->
@php
    $groupedQuestions = $validQuestions12->groupBy('data_category');


    $filteredGroups = $groupedQuestions->filter(function ($questions, $category) use ($finalReport) {
        return $questions->contains(function ($question) use ($finalReport) {
            return !empty($finalReport->{$question->column_name});
        });
    });
@endphp

@foreach($filteredGroups as $category => $questions)
 

    @foreach($questions->where('input_type', '!=', 'file') as $question)
        @php
            $answer = $finalReport->{$question->column_name} ?? null;
               $answer22= $finalReport->{$question->input_type} ?? null;
        @endphp

        @if(!empty($answer))
            <tr>
              
                <td>{{ $question->question }}</td>
                <td>{{ $answer }}</td>
            </tr>
        @endif
    @endforeach
@endforeach



                
               
              
            </table>


            <br>
           <table>
                <!-- <tr>
                    <th colspan="2" style="text-align: center; background-color: aquamarine;">
                        <p style="font-size: 10;">Findings on Google map timelines – Insured & Driver</p>
                    </th>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center; ">
                        <p style="font-size: 10;">IV RIDER GTL collected and attached with it.</p>
                    </td>
                </tr>
                <tr>
                    <th colspan="2" style="text-align: center; background-color: aquamarine;">
                    </th>
                </tr>
                <tr>
                    <td><img src="picture1.png" alt=""></td>
                    <td><img src="picture2.png" alt=""></td>
                </tr>
                <tr>
                    <td><img src="picture3.png" alt=""></td>
                    <td><img src="picture4.png" alt=""></td>
                </tr> -->

   @php
    $groupedQuestions = $validQuestions12->groupBy('data_category');
    $imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'];

    // Keep only groups that have at least one file-type question with data
    $filteredGroups = $groupedQuestions->filter(function ($questions, $category) use ($finalReport) {
        return $questions->contains(function ($question) use ($finalReport) {
            return $question->input_type === 'file' && !empty($finalReport->{$question->column_name});
        });
    });
@endphp

@foreach($filteredGroups as $category => $questions)
    {{-- Category header --}}
    <tr>
        <th colspan="2" style="text-align: center; background-color: aquamarine;">
            <p style="font-size: 10;">{{ str_replace('_', ' ', $category) }}</p>
        </th>
    </tr>

    {{-- Loop through file-type questions --}}
    @php $images = []; @endphp
    @foreach($questions->where('input_type', 'file') as $question)
        @php
            $filePath = $finalReport->{$question->column_name} ?? null;

            // Decode if JSON like ["uploads/xyz.png"]
            if ($filePath && is_string($filePath) && str_starts_with($filePath, '[')) {
                $decoded = json_decode($filePath, true);
                if (is_array($decoded) && !empty($decoded)) {
                    $filePath = $decoded[0]; // take first file
                }
            }

            $isImage = false;
            if ($filePath) {
                $ext = strtolower(pathinfo($filePath, PATHINFO_EXTENSION));
                $isImage = in_array($ext, $imageExtensions);
            }

            if ($isImage && !empty($filePath)) {
                $images[] = [
                    'path' => $filePath,
                    'label' => $question->question
                ];
            }
        @endphp
    @endforeach

    {{-- Show images in rows of 2 --}}
    @foreach(array_chunk($images, 2) as $row)
        <tr>
            @foreach($row as $img)
                <td style="text-align: center;">
                    <p style="font-size: 10;">{{ $img['label'] }}</p>
                 <img src="{{ storage_path('app/public/' . $img['path']) }}" 
     alt="{{ $img['label'] }}" 
     style="max-width:150px; max-height:150px;">
                </td>
            @endforeach
            @if(count($row) < 2)
                <td></td>
            @endif
        </tr>
    @endforeach
@endforeach





            </table>
           
            
            <h4>FACTS, FINDINGS AND FINAL CONCLUSION:</h4>
            <ul>

                <li>On vehicle verification, the damages are tally with accident description.</li>
                <li>Further enquiry at the spot, the spot is tally with vehicle damages.</li>
                <li>Insured provided the accident time photos and its properties, while verifying the same it reveals
                    the
                    loss date and genuineness of the accident.(Accident time photos and properties attached with it.)
                </li>
                <li>Insured provided IV rider Aswanth’s medical document from Hridalaya Hospital, Pettah and while
                    verifying the same it is mentioned that “RTA sustained injuries to R knee” . (Medical document
                    attached
                    with it.)</li>
                <li>Further on concerned hospital enquiry, the hospital authorities confirm that he took treatment from
                    there.(Video recording attached with it)</li>
                <li>Insured and IV driver had valid DL at the time of accident. No other suspected trigger observed in
                    addition.</li>

            </ul>
            <h4> Considering the above facts and findings we come to the conclusion that the case is genuine.</h4>
            <br>
            <br>
            <br>

            <div style="display: flex; justify-content: space-between;">
                <div>{{ \Carbon\Carbon::parse($finalReport->created_At)->format('d.m.Y') }}
<br>THIRUVANATHAPURAM</div>
                <div>ANOOP N G <br> <img src="sign.png"> </div>
            </div>

        </div>
    </div>
</body>

</html>