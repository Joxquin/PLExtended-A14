package com.google.android.apps.nexuslauncher.settings;

import X.a0;
import a2.C0159b;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.RectF;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.P;
import androidx.preference.Preference;
import com.android.launcher3.Utilities;
import com.android.launcher3.settings.PreferenceHighlighter;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.settings.AtAGlancePreference;
/* loaded from: classes.dex */
public class AtAGlancePreference extends Preference implements PreferenceHighlighter.HighlightDelegate {

    /* renamed from: d  reason: collision with root package name */
    public final float[] f7605d;

    /* renamed from: e  reason: collision with root package name */
    public final C0159b f7606e;

    /* loaded from: classes.dex */
    public class SmartspaceConfirmation extends DialogFragment {

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ int f7607d = 0;

        @Override // androidx.fragment.app.DialogFragment
        public final Dialog onCreateDialog() {
            final P activity = getActivity();
            final boolean z4 = Settings.Secure.getInt(activity.getContentResolver(), "smartspace", 1) == 1;
            return new AlertDialog.Builder(activity).setTitle(activity.getString(z4 ? R.string.smartspace_preferences_turn_off_title : R.string.smartspace_preferences_turn_on_title, activity.getString(R.string.smartspace_preferences_in_settings))).setMessage(z4 ? R.string.smartspace_preferences_turn_off_description : R.string.smartspace_preferences_turn_on_description).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).setPositiveButton(z4 ? R.string.smartspace_preferences_turn_off_action : R.string.smartspace_preferences_turn_on_action, new DialogInterface.OnClickListener() { // from class: a2.c
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    Context context = activity;
                    boolean z5 = z4;
                    int i5 = AtAGlancePreference.SmartspaceConfirmation.f7607d;
                    Settings.Secure.putInt(context.getContentResolver(), "smartspace", !z5 ? 1 : 0);
                }
            }).setNeutralButton(R.string.smartspace_preferences_manage, new DialogInterface.OnClickListener() { // from class: a2.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    Context context = activity;
                    int i5 = AtAGlancePreference.SmartspaceConfirmation.f7607d;
                    if (context.getPackageManager().resolveActivity(new Intent("android.settings.ASI_SMARTSPACE_SETTINGS").setPackage("com.google.android.as"), 0) != null) {
                        context.startActivityForResult(null, new Intent("android.settings.ASI_SMARTSPACE_SETTINGS").setPackage("com.google.android.as"), 0, null);
                    } else {
                        context.startActivityForResult(null, new Intent("com.google.android.googlequicksearchbox.action.ASSISTANT_SETTINGS").setPackage("com.google.android.googlequicksearchbox").putExtra("assistant_settings_feature", "ambient_assistant"), 0, null);
                    }
                }
            }).create();
        }
    }

    public AtAGlancePreference(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.f7605d = new float[2];
        this.f7606e = new C0159b(this, Executors.MAIN_EXECUTOR.getHandler());
    }

    @Override // com.android.launcher3.settings.PreferenceHighlighter.HighlightDelegate
    public final void offsetHighlight(View view, RectF rectF) {
        View findViewById = view.findViewById(R.id.action_manage);
        if (findViewById.getVisibility() == 0) {
            float[] fArr = this.f7605d;
            fArr[1] = 0.0f;
            fArr[0] = 0.0f;
            Utilities.getDescendantCoordRelativeToAncestor(findViewById, view, fArr, true, false);
            float[] fArr2 = this.f7605d;
            rectF.offset(fArr2[0], fArr2[1]);
            rectF.right = rectF.left + findViewById.getWidth();
            rectF.bottom = rectF.top + findViewById.getHeight();
            float f4 = -view.getResources().getDimension(R.dimen.smartspace_pref_highlight_border);
            rectF.inset(f4, f4);
        }
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        getContext().getContentResolver().registerContentObserver(Settings.Secure.getUriFor("smartspace"), false, this.f7606e);
        setSummary(Settings.Secure.getInt(getContext().getContentResolver(), "smartspace", 1) == 1 ? R.string.smartspace_desc_on : R.string.smartspace_desc_off);
        setFragment(SmartspaceConfirmation.class.getName());
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        View a4 = a0Var.a(16908312);
        if (getContext().getPackageManager().resolveActivity(new Intent("android.settings.ASI_SMARTSPACE_SETTINGS").setPackage("com.google.android.as"), 0) != null) {
            a4.setVisibility(0);
            a0Var.a(R.id.action_manage).setOnClickListener(new View.OnClickListener() { // from class: a2.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (r1) {
                        case 0:
                            view.getContext().startActivityForResult(null, new Intent("android.settings.ASI_SMARTSPACE_SETTINGS").setPackage("com.google.android.as"), 0, null);
                            return;
                        default:
                            view.getContext().startActivityForResult(null, new Intent("com.google.android.googlequicksearchbox.action.ASSISTANT_SETTINGS").setPackage("com.google.android.googlequicksearchbox").putExtra("assistant_settings_feature", "ambient_assistant"), 0, null);
                            return;
                    }
                }
            });
            return;
        }
        if (!(getContext().getPackageManager().resolveActivity(new Intent("com.google.android.googlequicksearchbox.action.ASSISTANT_SETTINGS").setPackage("com.google.android.googlequicksearchbox").putExtra("assistant_settings_feature", "ambient_assistant"), 0) != null)) {
            a4.setVisibility(8);
            return;
        }
        a4.setVisibility(0);
        a0Var.a(R.id.action_manage).setOnClickListener(new View.OnClickListener() { // from class: a2.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r1) {
                    case 0:
                        view.getContext().startActivityForResult(null, new Intent("android.settings.ASI_SMARTSPACE_SETTINGS").setPackage("com.google.android.as"), 0, null);
                        return;
                    default:
                        view.getContext().startActivityForResult(null, new Intent("com.google.android.googlequicksearchbox.action.ASSISTANT_SETTINGS").setPackage("com.google.android.googlequicksearchbox").putExtra("assistant_settings_feature", "ambient_assistant"), 0, null);
                        return;
                }
            }
        });
    }

    @Override // androidx.preference.Preference
    public final void onDetached() {
        super.onDetached();
        getContext().getContentResolver().unregisterContentObserver(this.f7606e);
    }

    public AtAGlancePreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7605d = new float[2];
        this.f7606e = new C0159b(this, Executors.MAIN_EXECUTOR.getHandler());
    }

    public AtAGlancePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7605d = new float[2];
        this.f7606e = new C0159b(this, Executors.MAIN_EXECUTOR.getHandler());
    }

    public AtAGlancePreference(Context context) {
        super(context);
        this.f7605d = new float[2];
        this.f7606e = new C0159b(this, Executors.MAIN_EXECUTOR.getHandler());
    }
}
