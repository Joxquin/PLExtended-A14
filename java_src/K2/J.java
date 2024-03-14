package K2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.systemui.smartspace.IcuDateTextView;
/* loaded from: classes.dex */
public final class J extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ IcuDateTextView f949a;

    public J(IcuDateTextView icuDateTextView) {
        this.f949a = icuDateTextView;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            IcuDateTextView icuDateTextView = this.f949a;
            icuDateTextView.f8368r = true;
            icuDateTextView.b();
        } else if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            IcuDateTextView icuDateTextView2 = this.f949a;
            icuDateTextView2.f8368r = false;
            icuDateTextView2.b();
        } else {
            IcuDateTextView icuDateTextView3 = this.f949a;
            int i4 = IcuDateTextView.f8360t;
            icuDateTextView3.a(!"android.intent.action.TIME_TICK".equals(intent.getAction()));
        }
    }
}
