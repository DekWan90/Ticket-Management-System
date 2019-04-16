<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Project;
use App\Message;
use Intervention\Image\ImageManagerStatic as Image;

use DB;


class TestController extends Controller
{
	public function index( $type )
	{
		if($type == "buyIssue")
		{
			return view('buyIssue');
		}

		else if($type == "sellIssue")
		{

			return view('sellIssue');
		}

		else if($type == "receiveIssue")
		{
			return view('receiveIssue');
		}

		else if($type == "sendIssue")
		{
			return view('sendIssue');
		}

		else if($type == "coinvata")
		{
			return view('coinvata');
		}

		else if($type == "kyc")
		{
			return view('verification');
		}

		else if($type == "bannedAcc")
		{
			return view('banned');
		}

		else if($type == "disable2FA")
		{
			return view('disable2FA');
		}

		else if($type == "pwReset")
		{
			return view('pwReset');
		}

		else if($type == "accClosure")
		{
			return view('accClosure');
		}

		else if($type == "secretPin")
		{
			return view('secretPin');
		}

		else if($type == "loginIssue")
		{
			return view('loginIssue');
		}

		else if($type == "corporateAcc")
		{
			return view('corporate');
		}

		else if($type == "wallet")
		{
			return view('wallet');

		}

		else if($type == "colonyShop")
		{
			return view('colonyShop');

		}

		else

		{
			return view('general');
		}
	}



	public function store(Request $request)
	{


		$user= new Project();
		$user->userID = $request->userID;
		$user->name = $request->name;
		$user->subject = $request->subject;
		$user->type = $request->type;
		$user->description = $request->description;
		$user->attachment = $request->attachment;
		$user->status = 'open';

		$this->validate($request,[
			'name' => 'required|max:35',
			'subject' => 'required',
			'type' => 'required',
			'description' => 'required',
			'attachment' => 'required|image',
		],[
			'name.required' => ' Name field is required.',
			'name.max' => ' Name may not be greater than 35 characters.',
			'subject.required' => ' Subject field is required.',
			'type.required' => ' Type field is required.',
			'description.required' => ' Description field is required.',
			'attachment.required' => ' Attachment field is required.',
		]);




		if($user->type == "buyIssue")

		{

			$arr['currency'] = $request->currency;
			$arr['status'] = $request->status;
			$arr['date'] = $request->date;
			$data = json_encode($arr);

			$user->details = $data;


			// dd($d->currency);
		}

		else if($user->type == "sellIssue")
		{

			$arr['currency'] = $request->currency;
			$arr['status'] = $request->status;
			$arr['date'] = $request->date;
			$data = json_encode($arr);
			$user->details = $data;


		}

		else if($user->type == "receiveIssue")
		{
			$arr['currency'] = $request->currency;
			$arr['blockExp'] = $request->blockExp;
			$arr['depoAddr'] = $request->depoAddr;
			$arr['transactionID'] = $request->transactionID;
			$arr['date'] = $request->date;

			$data = json_encode($arr);

			$user->details = $data;
		}

		else if($user->type == "sendIssue")
		{
			$arr['currency'] = $request->currency;
			$arr['blockExp'] = $request->blockExp;
			$arr['depoAddr'] = $request->depoAddr;
			$arr['date'] = $request->date;

			$data = json_encode($arr);
			$user->details = $data;

		}

		else if($user->type == "coinvata")
		{
			$arr['from'] = $request->from;
			$arr['to'] = $request->to;
			$arr['status'] = $request->status;
			$arr['date'] = $request->date;

			$data = json_encode($arr);


			$user->details = $data;
		}

		else if($user->type == "kyc")
		{
			$arr['status'] = $request->status;

			$data = json_encode($arr);
			$user->details = $data;
		}

		else if($user->type == "bannedAcc")
		{
			$arr['fullName'] = $request->fullName;
			$arr['idNum'] = $request->idNum;
			$arr['phoneNum'] = $request->phoneNum;
			$pic = $request->selfie;

			$selfieDocs = strtolower($pic->getClientOriginalExtension());

			//Filter by file extension
			if($selfieDocs == "jpeg" || $selfieDocs == "jpg" || $selfieDocs == "png") {

				$file_name = hash('adler32',$user->name);
				$base_url = "http://localhost/ticket/public/storage/";
				$pic->storeAs('attachment/'.$file_name,'UPFILE_'.$file_name.'.'.$selfieDocs);
				$docs1path = public_path('storage/attachment/'.$file_name.'/UPFILE_'.$file_name.'.'.$selfieDocs);
				$arr['selfie'] = $docs1path ;

			}

			$data = json_encode($arr);
			$user->details = $data;
		}

		else if($user->type == "disable2FA")
		{
			$arr['login2FA'] = $request->login2FA;
			$arr['backupCode'] = $request->backupCode;
			$arr['fullName'] = $request->fullName;
			$arr['idNum'] = $request->idNum;
			$pic = $request->selfie;

			$selfieDocs = strtolower($pic->getClientOriginalExtension());

			//Filter by file extension
			if($selfieDocs == "jpeg" || $selfieDocs == "jpg" || $selfieDocs == "png") {

				$file_name = hash('adler32',$user->name);
				$base_url = "http://localhost/ticket/public/storage/";
				$pic->storeAs('attachment/'.$file_name,'UPFILE_'.$file_name.'.'.$selfieDocs);
				$docs1path = public_path('storage/attachment/'.$file_name.'/UPFILE_'.$file_name.'.'.$selfieDocs);
				$arr['selfie'] = $docs1path ;

			}

			$data = json_encode($arr);

			$user->details = $data;
		}


		else if($user->type == "accClosure")
		{
			$arr['reason'] = $request->reason;
			$arr['digitalAsset'] = $request->digitalAsset;

			$data = json_encode($arr);

			$user->details = $data;
		}

		else if($user->type == "secretPin")
		{
			$arr['fullName'] = $request->fullName;
			$arr['idNum'] = $request->idNum;
			$pic = $request->selfie;

			$selfieDocs = strtolower($pic->getClientOriginalExtension());

			//Filter by file extension
			if($selfieDocs == "jpeg" || $selfieDocs == "jpg" || $selfieDocs == "png") {

				$file_name = hash('adler32',$user->name);
				$base_url = "http://localhost/ticket/public/storage/";
				$pic->storeAs('attachment/'.$file_name,'UPFILE_'.$file_name.'.'.$selfieDocs);
				$docs1path = public_path('storage/attachment/'.$file_name.'/UPFILE_'.$file_name.'.'.$selfieDocs);
				$arr['selfie'] = $docs1path ;

			}

			$data = json_encode($arr);
			$user->details = $data;
		}

		else if($user->type == "loginIssue")
		{
			$arr['reasonLoss'] = $request->reasonLoss;
			$arr['acc'] = $request->acc;

			$data = json_encode($arr);

			$user->details = $data;
		}

		else if($user->type == "general")
		{
			$arr['category'] = $request->category;

			$data = json_encode($arr);

			$user->details = $data;
		}

		else

		{
		}



		$extensiondocs = strtolower($user->attachment->getClientOriginalExtension());



		//Filter by file extension
		if($extensiondocs == "jpeg" || $extensiondocs == "jpg" || $extensiondocs == "png") {

			$file_name = hash('adler32',$user->name);
			$base_url = "http://localhost/loginUser/public/storage/";
			$request->attachment->storeAs('attachment/'.$file_name,'UPFILE_'.$file_name.'.'.$extensiondocs);
			$docs1path = public_path('storage/attachment/'.$file_name.'/UPFILE_'.$file_name.'.'.$extensiondocs);
			//$uploadFile = file_get_contents($attachment->getRealPath());
			// $realpath = "attachment/".$file_name."/UPFILE_".$file_name.".".$extensiondocs; //base64_encode($id1str);
			$user->attachment = $docs1path ;

		}


		$user->save();
		// dd($realpath);

		return redirect('ticketSubmitted');

		$this->getData();



	}

	public function show()
	{
		// $tickets = Project::all()->toArray();
		$tickets = DB::table('tickets')->where('userID', Auth::id())->get();
		return view ('viewTicket',compact('tickets'));
	}

	public function showTicket($id)
	{
		$tickets = DB::table('tickets')->where('userID', Auth::id())->where('id', $id)->get();

		return view('viewTicketDetails', compact('tickets'));
	}





	public function storeStatus(Request $request, $id)
	{
		$tickets = DB::table('tickets')->where('userID', Auth::id())->where('id', $id)->get();
		dd($tickets);

		$tickets->status = $request->status;
		dd($tickets->status);
		return redirect()->back();

	}


	public function search(Request $request)
	{

		$search = $request->get('search');
		$data = DB::table('tickets')->where('subject' , 'like', '%' .$search.'%')->get()
		->orWhere('description' , 'like', '%' .$search.'%')->get();


		return view('home',compact('data'));
	}

}
