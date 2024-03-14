package com.google.android.apps.nexuslauncher.qsb;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.c;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.m;
import com.google.android.apps.nexuslauncher.n;
import com.google.android.apps.nexuslauncher.o;
import com.google.android.apps.nexuslauncher.p;
import com.google.android.apps.nexuslauncher.qsb.AssistUtilsGoogle;
import com.google.android.apps.nexuslauncher.qsb.AssistantIconView;
import com.google.android.apps.nexuslauncher.u;
/* loaded from: classes.dex */
public class AssistantIconView extends ImageView implements SharedPreferences.OnSharedPreferenceChangeListener, m {

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ int f7524g = 0;

    /* renamed from: d  reason: collision with root package name */
    public final ActivityContext f7525d;

    /* renamed from: e  reason: collision with root package name */
    public final SharedPreferences f7526e;

    /* renamed from: f  reason: collision with root package name */
    public Context f7527f;

    public AssistantIconView(Context context) {
        this(context, null);
    }

    public final void a() {
        int i4;
        o oVar;
        if (c.f7334w.get()) {
            p pVar = ((u) u.f7612m.get(getContext())).f7619i;
            if (!pVar.f7505c) {
                n nVar = pVar.f7504b;
                if (nVar == null || (oVar = nVar.f7485b) == null) {
                    setVisibility(8);
                    return;
                }
                setVisibility(0);
                setImageBitmap(oVar.f7486a);
                return;
            }
            setVisibility(0);
        }
        if (!(!this.f7526e.getBoolean("opa_enabled", true))) {
            FeatureFlags.IntFlag intFlag = c.f7320i;
            intFlag.getClass();
            if (FeatureFlags.sIntReader.applyAsInt(intFlag) == 2) {
                i4 = R.drawable.ic_poodle_color;
                setImageDrawable(this.f7527f.getDrawable(i4));
            }
        }
        i4 = R.drawable.ic_mic_color;
        setImageDrawable(this.f7527f.getDrawable(i4));
    }

    @Override // com.google.android.apps.nexuslauncher.m
    public final void c(p pVar) {
        a();
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7526e.registerOnSharedPreferenceChangeListener(this);
        if (c.f7334w.get()) {
            ((u) u.f7612m.get(getContext())).a(this);
        }
        a();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7526e.unregisterOnSharedPreferenceChangeListener(this);
        if (c.f7334w.get()) {
            ((u) u.f7612m.get(getContext())).c(this);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("opa_enabled".equals(str)) {
            a();
        }
    }

    public AssistantIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AssistantIconView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7525d = (ActivityContext) ActivityContext.lookupContext(context);
        this.f7526e = LauncherPrefs.getPrefs(context);
        this.f7527f = context;
        setScaleType(ImageView.ScaleType.CENTER);
        setOnClickListener(new View.OnClickListener() { // from class: W1.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.google.android.apps.nexuslauncher.o oVar;
                AssistantIconView assistantIconView = AssistantIconView.this;
                int i5 = AssistantIconView.f7524g;
                assistantIconView.getClass();
                if (com.google.android.apps.nexuslauncher.c.f7334w.get()) {
                    com.google.android.apps.nexuslauncher.p pVar = ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(assistantIconView.getContext())).f7619i;
                    if (!pVar.f7505c) {
                        com.google.android.apps.nexuslauncher.n nVar = pVar.f7504b;
                        if (nVar == null || (oVar = nVar.f7485b) == null) {
                            return;
                        }
                        assistantIconView.f7525d.startActivitySafely(assistantIconView, new Intent(oVar.f7487b), null);
                        return;
                    }
                }
                assistantIconView.f7525d.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_MIC_TAP);
                AssistUtilsGoogle assistUtilsGoogle = new AssistUtilsGoogle(assistantIconView.getContext());
                if ((!assistantIconView.f7526e.getBoolean("opa_enabled", true)) || !assistUtilsGoogle.tryStartAssistOverride(4)) {
                    assistUtilsGoogle.d("android.intent.action.VOICE_ASSIST");
                }
            }
        });
    }
}
