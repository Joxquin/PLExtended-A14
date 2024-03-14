package com.google.android.apps.nexuslauncher.qsb;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.AssistStateManager;
import com.android.quickstep.util.AssistUtils;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.google.android.apps.nexuslauncher.c;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
/* loaded from: classes.dex */
public class AssistUtilsGoogle extends AssistUtils {

    /* renamed from: d  reason: collision with root package name */
    public final Context f7522d;

    /* renamed from: e  reason: collision with root package name */
    public final StatsLogManager f7523e;

    public AssistUtilsGoogle(Context context) {
        this.f7522d = context;
        this.f7523e = StatsLogManager.newInstance(context);
    }

    public final boolean a() {
        Context context = this.f7522d;
        ContentResolver contentResolver = context.getContentResolver();
        String string = Settings.Secure.getString(contentResolver, "assistant");
        if (TextUtils.isEmpty(string)) {
            String string2 = Settings.Secure.getString(contentResolver, "voice_interaction_service");
            if (TextUtils.isEmpty(string2)) {
                ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.ASSIST"), 65536);
                if (resolveActivity != null) {
                    return "com.google.android.googlequicksearchbox".equals(resolveActivity.resolvePackageName);
                }
                return false;
            }
            return "com.google.android.googlequicksearchbox".equals(ComponentName.unflattenFromString(string2).getPackageName());
        }
        return "com.google.android.googlequicksearchbox".equals(ComponentName.unflattenFromString(string).getPackageName());
    }

    public final boolean b(int i4) {
        Bundle bundle = new Bundle();
        bundle.putInt("omni.entry_point", i4);
        boolean showVoiceSession = ActivityManagerWrapper.getInstance().showVoiceSession(null, bundle, 7, this.f7522d.getAttributionTag());
        if (!showVoiceSession) {
            Log.d("AssistUtilsGoogle", "Omni invocation failed: invocation error");
            this.f7523e.logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_ASSISTANT_FAILED_SERVICE_ERROR);
        }
        return showVoiceSession;
    }

    public final boolean c() {
        boolean a4 = a();
        StatsLogManager statsLogManager = this.f7523e;
        if (!a4) {
            Log.d("AssistUtilsGoogle", "Omni invocation failed: not configured");
            statsLogManager.logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_ASSISTANT_FAILED_NOT_AVAILABLE);
            return false;
        }
        MainThreadInitializedObject mainThreadInitializedObject = AssistStateManager.INSTANCE;
        Context context = this.f7522d;
        if (!((AssistStateManager) mainThreadInitializedObject.get(context)).isSearchAvailable()) {
            Log.d("AssistUtilsGoogle", "Omni invocation failed: not available");
            statsLogManager.logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_OMNI_FAILED_NOT_AVAILABLE);
            return false;
        }
        int lastSystemUiStateFlags = ((SystemUiProxy) SystemUiProxy.INSTANCE.get(context)).getLastSystemUiStateFlags();
        if ((lastSystemUiStateFlags & 2052) != 0) {
            Log.d("AssistUtilsGoogle", "Omni invocation failed: notification shade");
            statsLogManager.logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_OMNI_ATTEMPTED_OVER_NOTIFICATION_SHADE);
            return false;
        }
        if ((lastSystemUiStateFlags & 584) != 0) {
            Log.d("AssistUtilsGoogle", "Omni invocation failed: keyguard");
            statsLogManager.logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_OMNI_ATTEMPTED_OVER_KEYGUARD);
            return false;
        }
        return true;
    }

    public final void d(String str) {
        Context context = this.f7522d;
        try {
            context.startActivity(new Intent(str).addFlags(268468224).setPackage("com.google.android.googlequicksearchbox"));
        } catch (ActivityNotFoundException unused) {
            ((LauncherApps) context.getSystemService(LauncherApps.class)).startAppDetailsActivity(new ComponentName("com.google.android.googlequicksearchbox", ".SearchActivity"), Process.myUserHandle(), null, null);
        }
    }

    @Override // com.android.quickstep.util.AssistUtils
    public final int[] getSysUiAssistOverrideInvocationTypes() {
        IntArray intArray = new IntArray();
        if (c.f7314c.get()) {
            intArray.add(5);
        }
        return intArray.toArray();
    }

    @Override // com.android.quickstep.util.AssistUtils
    public final boolean tryStartAssistOverride(int i4) {
        Context context = this.f7522d;
        if (i4 == 4) {
            if (a()) {
                Bundle bundle = new Bundle();
                bundle.putInt("invocation_type", i4);
                bundle.putInt("triggered_by", 37);
                return ActivityManagerWrapper.getInstance().showVoiceSession(null, bundle, 5, context.getAttributionTag());
            }
            return false;
        } else if (i4 != 5) {
            if (a()) {
                Bundle bundle2 = new Bundle();
                bundle2.putInt("invocation_type", i4);
                return ActivityManagerWrapper.getInstance().showVoiceSession(null, bundle2, 5, context.getAttributionTag());
            }
            return false;
        } else if (c.f7314c.get()) {
            if (c() ? b(2) : false) {
                this.f7523e.logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_OMNI_SUCCESSFUL_HOME);
                return true;
            }
            return true;
        } else {
            return false;
        }
    }
}
