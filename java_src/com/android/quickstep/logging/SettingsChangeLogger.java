package com.android.quickstep.logging;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Xml;
import com.android.launcher3.AutoInstallsLayout;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.R$styleable;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.DeviceGridState;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.NavigationMode;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.SettingsCache;
import com.android.quickstep.logging.SettingsChangeLogger;
import com.android.systemui.shared.R;
import java.io.IOException;
import java.util.Objects;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class SettingsChangeLogger implements DisplayController.DisplayInfoChangeListener, SharedPreferences.OnSharedPreferenceChangeListener, SafeCloseable {
    private static final String BOOLEAN_PREF = "SwitchPreference";
    public static MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new f());
    private static final String ROOT_TAG = "androidx.preference.PreferenceScreen";
    private static final String TAG = "SettingsChangeLogger";
    private final Context mContext;
    private StatsLogManager.LauncherEvent mHomeScreenSuggestionEvent;
    private final ArrayMap mLoggablePrefs;
    private NavigationMode mNavMode;
    private StatsLogManager.LauncherEvent mNotificationDotsEvent;
    private final StatsLogManager mStatsLogManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class LoggablePref {
        public boolean defaultValue;
        public int eventIdOff;
        public int eventIdOn;

        private LoggablePref() {
        }

        public /* synthetic */ LoggablePref(int i4) {
            this();
        }
    }

    private SettingsChangeLogger(Context context) {
        this.mContext = context;
        this.mStatsLogManager = StatsLogManager.newInstance(context);
        this.mLoggablePrefs = loadPrefKeys(context);
        ((DisplayController) DisplayController.INSTANCE.get(context)).addChangeListener(this);
        this.mNavMode = DisplayController.getNavigationMode(context);
        LauncherPrefs.getPrefs(context).registerOnSharedPreferenceChangeListener(this);
        LauncherPrefs.getDevicePrefs(context).registerOnSharedPreferenceChangeListener(this);
        SettingsCache settingsCache = (SettingsCache) SettingsCache.INSTANCE.get(context);
        Uri uri = SettingsCache.NOTIFICATION_BADGING_URI;
        settingsCache.register(uri, new SettingsCache.OnChangeListener() { // from class: com.android.quickstep.logging.e
            @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
            public final void onSettingsChanged(boolean z4) {
                SettingsChangeLogger.this.onNotificationDotsChanged(z4);
            }
        });
        onNotificationDotsChanged(settingsCache.getValue(1, uri));
    }

    public static /* synthetic */ SettingsChangeLogger e(Context context) {
        return new SettingsChangeLogger(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$logSnapshot$1(SharedPreferences sharedPreferences, String str, LoggablePref loggablePref) {
        return sharedPreferences.getBoolean(str, loggablePref.defaultValue) ? loggablePref.eventIdOn : loggablePref.eventIdOff;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$logSnapshot$2(StatsLogManager.StatsLogger statsLogger, final SharedPreferences sharedPreferences, final String str, final LoggablePref loggablePref) {
        statsLogger.log(new StatsLogManager.EventEnum() { // from class: com.android.quickstep.logging.d
            @Override // com.android.launcher3.logging.StatsLogManager.EventEnum
            public final int getId() {
                int lambda$logSnapshot$1;
                lambda$logSnapshot$1 = SettingsChangeLogger.lambda$logSnapshot$1(sharedPreferences, str, loggablePref);
                return lambda$logSnapshot$1;
            }
        });
    }

    private static ArrayMap loadPrefKeys(Context context) {
        XmlResourceParser xml = context.getResources().getXml(R.xml.launcher_preferences);
        ArrayMap arrayMap = new ArrayMap();
        try {
            AutoInstallsLayout.beginDocument(xml, ROOT_TAG);
            int depth = xml.getDepth();
            while (true) {
                int next = xml.next();
                if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                    break;
                } else if (next == 2 && BOOLEAN_PREF.equals(xml.getName())) {
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xml), R$styleable.LoggablePref);
                    String string = obtainStyledAttributes.getString(0);
                    LoggablePref loggablePref = new LoggablePref(0);
                    loggablePref.defaultValue = obtainStyledAttributes.getBoolean(1, true);
                    loggablePref.eventIdOn = obtainStyledAttributes.getInt(3, 0);
                    int i4 = obtainStyledAttributes.getInt(2, 0);
                    loggablePref.eventIdOff = i4;
                    if (i4 > 0 && loggablePref.eventIdOn > 0) {
                        arrayMap.put(string, loggablePref);
                    }
                }
            }
        } catch (IOException | XmlPullParserException e4) {
            Log.e(TAG, "Error parsing preference xml", e4);
        }
        return arrayMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNotificationDotsChanged(boolean z4) {
        StatsLogManager.LauncherEvent launcherEvent = z4 ? StatsLogManager.LauncherEvent.LAUNCHER_NOTIFICATION_DOT_ENABLED : StatsLogManager.LauncherEvent.LAUNCHER_NOTIFICATION_DOT_DISABLED;
        StatsLogManager.LauncherEvent launcherEvent2 = this.mNotificationDotsEvent;
        if (launcherEvent2 != null && launcherEvent2 != launcherEvent) {
            this.mStatsLogManager.logger().log(this.mNotificationDotsEvent);
        }
        this.mNotificationDotsEvent = launcherEvent;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        LauncherPrefs.getPrefs(this.mContext).unregisterOnSharedPreferenceChangeListener(this);
        LauncherPrefs.getDevicePrefs(this.mContext).unregisterOnSharedPreferenceChangeListener(this);
    }

    public void logSnapshot(InstanceId instanceId) {
        final StatsLogManager.StatsLogger withInstanceId = this.mStatsLogManager.logger().withInstanceId(instanceId);
        Optional ofNullable = Optional.ofNullable(this.mNotificationDotsEvent);
        Objects.requireNonNull(withInstanceId);
        ofNullable.ifPresent(new Consumer() { // from class: com.android.quickstep.logging.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        withInstanceId.log((StatsLogManager.LauncherEvent) obj);
                        return;
                }
            }
        });
        Optional.ofNullable(this.mNavMode).map(new b()).ifPresent(new Consumer() { // from class: com.android.quickstep.logging.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        withInstanceId.log((StatsLogManager.LauncherEvent) obj);
                        return;
                }
            }
        });
        Optional.ofNullable(this.mHomeScreenSuggestionEvent).ifPresent(new Consumer() { // from class: com.android.quickstep.logging.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        withInstanceId.log((StatsLogManager.LauncherEvent) obj);
                        return;
                }
            }
        });
        Optional.ofNullable(new DeviceGridState(this.mContext).getWorkspaceSizeEvent()).ifPresent(new Consumer() { // from class: com.android.quickstep.logging.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                    case 1:
                    case 2:
                    default:
                        withInstanceId.log((StatsLogManager.LauncherEvent) obj);
                        return;
                }
            }
        });
        final SharedPreferences prefs = LauncherPrefs.getPrefs(this.mContext);
        withInstanceId.log(((Boolean) LauncherPrefs.get(this.mContext).get(LauncherPrefs.THEMED_ICONS)).booleanValue() ? StatsLogManager.LauncherEvent.LAUNCHER_THEMED_ICON_ENABLED : StatsLogManager.LauncherEvent.LAUNCHER_THEMED_ICON_DISABLED);
        this.mLoggablePrefs.forEach(new BiConsumer() { // from class: com.android.quickstep.logging.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                SettingsChangeLogger.lambda$logSnapshot$2(StatsLogManager.StatsLogger.this, prefs, (String) obj, (SettingsChangeLogger.LoggablePref) obj2);
            }
        });
    }

    @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        if ((i4 & 16) != 0) {
            this.mNavMode = info.navigationMode;
            this.mStatsLogManager.logger().log(this.mNavMode.launcherEvent);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("last_prediction_enabled_state".equals(str) || "migration_src_workspace_size".equals(str) || "themed_icons".equals(str) || this.mLoggablePrefs.containsKey(str)) {
            this.mHomeScreenSuggestionEvent = LauncherPrefs.getDevicePrefs(this.mContext).getBoolean("last_prediction_enabled_state", true) ? StatsLogManager.LauncherEvent.LAUNCHER_HOME_SCREEN_SUGGESTIONS_ENABLED : StatsLogManager.LauncherEvent.LAUNCHER_HOME_SCREEN_SUGGESTIONS_DISABLED;
            this.mStatsLogManager.logger().log(this.mHomeScreenSuggestionEvent);
        }
    }
}
