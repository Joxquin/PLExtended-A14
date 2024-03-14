package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import android.util.Log;
import java.util.Collections;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class G implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4722a = 1;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f4723b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f4724c;

    public /* synthetic */ G(Context context, UserHandle userHandle) {
        this.f4723b = context;
        this.f4724c = userHandle;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4722a) {
            case 0:
                ((BgDataModel) this.f4724c).updateShortcutPinnedState(this.f4723b, (UserHandle) obj);
                return;
            default:
                Context context = this.f4723b;
                try {
                    ((LauncherApps) context.getSystemService(LauncherApps.class)).pinShortcuts((String) obj, Collections.emptyList(), (UserHandle) this.f4724c);
                    return;
                } catch (IllegalStateException | SecurityException e4) {
                    Log.w("BgDataModel", "Failed to unpin shortcut", e4);
                    return;
                }
        }
    }

    public /* synthetic */ G(Context context, BgDataModel bgDataModel) {
        this.f4724c = bgDataModel;
        this.f4723b = context;
    }
}
