package K2;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import com.google.android.systemui.smartspace.BcSmartspaceView;
/* loaded from: classes.dex */
public final class v extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BcSmartspaceView f1009a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(BcSmartspaceView bcSmartspaceView, Handler handler) {
        super(handler);
        this.f1009a = bcSmartspaceView;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        BcSmartspaceView bcSmartspaceView = this.f1009a;
        boolean z5 = BcSmartspaceView.f8326t;
        Context context = bcSmartspaceView.getContext();
        bcSmartspaceView.f8330g = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
    }
}
