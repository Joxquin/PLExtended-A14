package a2;

import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.google.android.apps.nexuslauncher.settings.AtAGlancePreference;
import com.google.android.systemui.smartspace.BcSmartspaceEvent;
/* renamed from: a2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0159b extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtAGlancePreference f2396a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0159b(AtAGlancePreference atAGlancePreference, Handler handler) {
        super(handler);
        this.f2396a = atAGlancePreference;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4) {
        AtAGlancePreference atAGlancePreference = this.f2396a;
        SysUiStatsLog.write(SysUiStatsLog.SMARTSPACE_CARD_REPORTED, Settings.Secure.getInt(atAGlancePreference.getContext().getContentResolver(), "smartspace", 1) == 1 ? BcSmartspaceEvent.ENABLED_SMARTSPACE.a() : BcSmartspaceEvent.DISABLED_SMARTSPACE.a());
        atAGlancePreference.setSummary(Settings.Secure.getInt(atAGlancePreference.getContext().getContentResolver(), "smartspace", 1) == 1 ? R.string.smartspace_desc_on : R.string.smartspace_desc_off);
    }
}
