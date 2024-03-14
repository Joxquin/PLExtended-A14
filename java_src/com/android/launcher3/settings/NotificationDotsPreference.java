package com.android.launcher3.settings;

import X.a0;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.P;
import androidx.preference.Preference;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SettingsCache;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class NotificationDotsPreference extends Preference implements SettingsCache.OnChangeListener {
    private final ContentObserver mListenerListObserver;
    private boolean mWidgetFrameVisible;

    /* loaded from: classes.dex */
    public class NotificationAccessConfirmation extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i4) {
            ComponentName componentName = new ComponentName(getActivity(), NotificationListener.class);
            Bundle bundle = new Bundle();
            bundle.putString(":settings:fragment_args_key", componentName.flattenToString());
            getActivity().startActivity(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS").addFlags(268435456).putExtra(":settings:fragment_args_key", componentName.flattenToString()).putExtra(":settings:show_fragment_args", bundle));
        }

        @Override // androidx.fragment.app.DialogFragment
        public final Dialog onCreateDialog() {
            P activity = getActivity();
            return new AlertDialog.Builder(activity).setTitle(R.string.title_missing_notification_access).setMessage(activity.getString(R.string.msg_missing_notification_access, activity.getString(R.string.derived_app_name))).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.title_change_settings, this).create();
        }
    }

    public NotificationDotsPreference(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mWidgetFrameVisible = false;
        this.mListenerListObserver = new ContentObserver(Executors.MAIN_EXECUTOR.getHandler()) { // from class: com.android.launcher3.settings.NotificationDotsPreference.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z4) {
                NotificationDotsPreference.a(NotificationDotsPreference.this);
            }
        };
    }

    public static void a(NotificationDotsPreference notificationDotsPreference) {
        notificationDotsPreference.getClass();
        notificationDotsPreference.onSettingsChanged(((SettingsCache) SettingsCache.INSTANCE.get(notificationDotsPreference.getContext())).getValue(1, SettingsCache.NOTIFICATION_BADGING_URI));
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        Uri uri = SettingsCache.NOTIFICATION_BADGING_URI;
        ((SettingsCache) SettingsCache.INSTANCE.get(getContext())).register(uri, this);
        getContext().getContentResolver().registerContentObserver(Settings.Secure.getUriFor("enabled_notification_listeners"), false, this.mListenerListObserver);
        onSettingsChanged(((SettingsCache) SettingsCache.INSTANCE.get(getContext())).getValue(1, uri));
        Bundle bundle = new Bundle();
        bundle.putString(":settings:fragment_args_key", "notification_badging");
        setIntent(new Intent("android.settings.NOTIFICATION_SETTINGS").putExtra(":settings:show_fragment_args", bundle));
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        super.onBindViewHolder(a0Var);
        View a4 = a0Var.a(16908312);
        if (a4 != null) {
            a4.setVisibility(this.mWidgetFrameVisible ? 0 : 8);
        }
    }

    @Override // androidx.preference.Preference
    public final void onDetached() {
        super.onDetached();
        ((SettingsCache) SettingsCache.INSTANCE.get(getContext())).unregister(SettingsCache.NOTIFICATION_BADGING_URI, this);
        getContext().getContentResolver().unregisterContentObserver(this.mListenerListObserver);
    }

    @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
    public final void onSettingsChanged(boolean z4) {
        int i4 = z4 ? R.string.notification_dots_desc_on : R.string.notification_dots_desc_off;
        boolean z5 = true;
        if (z4) {
            String string = Settings.Secure.getString(getContext().getContentResolver(), "enabled_notification_listeners");
            ComponentName componentName = new ComponentName(getContext(), NotificationListener.class);
            if (string == null || (!string.contains(componentName.flattenToString()) && !string.contains(componentName.flattenToShortString()))) {
                z5 = false;
            }
            if (!z5) {
                i4 = R.string.title_missing_notification_access;
            }
        }
        boolean z6 = !z5;
        if (this.mWidgetFrameVisible != z6) {
            this.mWidgetFrameVisible = z6;
            notifyChanged();
        }
        setFragment(z5 ? null : NotificationAccessConfirmation.class.getName());
        setSummary(i4);
    }

    public NotificationDotsPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mWidgetFrameVisible = false;
        this.mListenerListObserver = new ContentObserver(Executors.MAIN_EXECUTOR.getHandler()) { // from class: com.android.launcher3.settings.NotificationDotsPreference.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z4) {
                NotificationDotsPreference.a(NotificationDotsPreference.this);
            }
        };
    }

    public NotificationDotsPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mWidgetFrameVisible = false;
        this.mListenerListObserver = new ContentObserver(Executors.MAIN_EXECUTOR.getHandler()) { // from class: com.android.launcher3.settings.NotificationDotsPreference.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z4) {
                NotificationDotsPreference.a(NotificationDotsPreference.this);
            }
        };
    }

    public NotificationDotsPreference(Context context) {
        super(context);
        this.mWidgetFrameVisible = false;
        this.mListenerListObserver = new ContentObserver(Executors.MAIN_EXECUTOR.getHandler()) { // from class: com.android.launcher3.settings.NotificationDotsPreference.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z4) {
                NotificationDotsPreference.a(NotificationDotsPreference.this);
            }
        };
    }
}
