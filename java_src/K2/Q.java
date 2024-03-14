package K2;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import com.google.android.systemui.smartspace.WeatherSmartspaceView;
/* loaded from: classes.dex */
public final class Q extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ WeatherSmartspaceView f957a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q(WeatherSmartspaceView weatherSmartspaceView, Handler handler) {
        super(handler);
        this.f957a = weatherSmartspaceView;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        WeatherSmartspaceView weatherSmartspaceView = this.f957a;
        int i4 = WeatherSmartspaceView.f8378k;
        Context context = weatherSmartspaceView.getContext();
        boolean z5 = Settings.Secure.getIntForUser(context.getContentResolver(), "doze_always_on", 0, context.getUserId()) == 1;
        WeatherSmartspaceView weatherSmartspaceView2 = this.f957a;
        if (weatherSmartspaceView2.f8384i == z5) {
            return;
        }
        weatherSmartspaceView2.f8384i = z5;
    }
}
