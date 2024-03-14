package K2;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import com.google.android.systemui.smartspace.DateSmartspaceView;
/* loaded from: classes.dex */
public final class D extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DateSmartspaceView f937a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D(DateSmartspaceView dateSmartspaceView, Handler handler) {
        super(handler);
        this.f937a = dateSmartspaceView;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        DateSmartspaceView dateSmartspaceView = this.f937a;
        int i4 = DateSmartspaceView.f8347i;
        Context context = dateSmartspaceView.getContext();
        boolean z5 = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
        DateSmartspaceView dateSmartspaceView2 = this.f937a;
        if (dateSmartspaceView2.f8351g == z5) {
            return;
        }
        dateSmartspaceView2.f8351g = z5;
    }
}
