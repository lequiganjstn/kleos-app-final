package crc64d6358e7bf64fbac4;


public class RecognitionSupportCallback
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.speech.RecognitionSupportCallback
{

	public RecognitionSupportCallback ()
	{
		super ();
		if (getClass () == RecognitionSupportCallback.class) {
			mono.android.TypeManager.Activate ("CommunityToolkit.Maui.Media.RecognitionSupportCallback, CommunityToolkit.Maui.Core", "", this, new java.lang.Object[] {  });
		}
	}

	public void onError (int p0)
	{
		n_onError (p0);
	}

	private native void n_onError (int p0);

	public void onSupportResult (android.speech.RecognitionSupport p0)
	{
		n_onSupportResult (p0);
	}

	private native void n_onSupportResult (android.speech.RecognitionSupport p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
