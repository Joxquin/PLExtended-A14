package com.android.launcher3.uioverrides.flags;

import android.app.ActivityThread;
import android.provider.DeviceConfig;
import android.util.Log;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.flags.FlagsFactory;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ScreenOnTracker;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class FlagsFactory {
    private static final FlagsFactory INSTANCE = new FlagsFactory();

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f5242a = 0;
    private final Set mKeySet = new HashSet();
    private boolean mRestartRequested = false;

    static {
        new ArrayList();
        getReleaseFlag("LAUNCHER_TEAMFOOD", FeatureFlags.FlagState.DISABLED);
    }

    private FlagsFactory() {
        DeviceConfig.addOnPropertiesChangedListener("launcher", Executors.UI_HELPER_EXECUTOR, new DeviceConfig.OnPropertiesChangedListener() { // from class: c1.i
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                FlagsFactory.b(FlagsFactory.this, properties);
            }
        });
    }

    public static void a(FlagsFactory flagsFactory, boolean z4) {
        if (!flagsFactory.mRestartRequested || z4) {
            return;
        }
        Log.e("FlagsFactory", "Restart requested, killing process");
        System.exit(0);
    }

    public static void b(final FlagsFactory flagsFactory, DeviceConfig.Properties properties) {
        flagsFactory.getClass();
        if (Collections.disjoint(properties.getKeyset(), flagsFactory.mKeySet) || flagsFactory.mRestartRequested) {
            return;
        }
        Log.e("FlagsFactory", "Flag changed, scheduling restart");
        flagsFactory.mRestartRequested = true;
        ScreenOnTracker screenOnTracker = (ScreenOnTracker) ScreenOnTracker.INSTANCE.get(ActivityThread.currentApplication());
        if (screenOnTracker.isScreenOn()) {
            screenOnTracker.addListener(new ScreenOnTracker.ScreenOnListener() { // from class: c1.j
                @Override // com.android.launcher3.util.ScreenOnTracker.ScreenOnListener
                public final void onScreenOnChanged(boolean z4) {
                    FlagsFactory.a(FlagsFactory.this, z4);
                }
            });
        } else if (flagsFactory.mRestartRequested) {
            Log.e("FlagsFactory", "Restart requested, killing process");
            System.exit(0);
        }
    }

    public static FeatureFlags.BooleanFlag getDebugFlag(FeatureFlags.FlagState flagState) {
        return new FeatureFlags.BooleanFlag(flagState == FeatureFlags.FlagState.ENABLED);
    }

    public static FeatureFlags.IntFlag getIntFlag() {
        ((HashSet) INSTANCE.mKeySet).add("qsb_voice_icon_type");
        return new FeatureFlags.IntFlag(DeviceConfig.getInt("launcher", "qsb_voice_icon_type", 0));
    }

    public static FeatureFlags.BooleanFlag getReleaseFlag(String str, FeatureFlags.FlagState flagState) {
        ((HashSet) INSTANCE.mKeySet).add(str);
        return new FeatureFlags.BooleanFlag(DeviceConfig.getBoolean("launcher", str, flagState == FeatureFlags.FlagState.ENABLED));
    }
}
