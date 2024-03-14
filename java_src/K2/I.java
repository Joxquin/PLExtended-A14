package K2;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import com.google.android.systemui.smartspace.IcuDateTextView;
/* loaded from: classes.dex */
public final class I extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ IcuDateTextView f948a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(IcuDateTextView icuDateTextView, Handler handler) {
        super(handler);
        this.f948a = icuDateTextView;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        IcuDateTextView icuDateTextView = this.f948a;
        int i4 = IcuDateTextView.f8360t;
        Context context = icuDateTextView.getContext();
        boolean z5 = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
        IcuDateTextView icuDateTextView2 = this.f948a;
        if (icuDateTextView2.f8362l == z5) {
            return;
        }
        icuDateTextView2.f8362l = z5;
        icuDateTextView2.b();
    }
}
