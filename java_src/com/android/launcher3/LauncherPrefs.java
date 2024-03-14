package com.android.launcher3;

import android.content.Context;
import android.content.SharedPreferences;
import com.android.launcher3.states.RotationHelper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MainThreadInitializedObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
/* loaded from: classes.dex */
public final class LauncherPrefs {
    public static final ContextualItem ALLOW_ROTATION;
    public static final ConstantItem ALL_APPS_OVERVIEW_THRESHOLD;
    public static final ConstantItem APP_WIDGET_IDS;
    public static final Companion Companion;
    public static final ConstantItem DB_FILE;
    public static final ConstantItem DEVICE_TYPE;
    public static final ConstantItem GRID_NAME;
    public static final ConstantItem HOTSEAT_COUNT;
    public static final ConstantItem ICON_STATE;
    public static MainThreadInitializedObject INSTANCE;
    public static final ConstantItem OLD_APP_WIDGET_IDS;
    public static final ConstantItem PROMISE_ICON_IDS;
    public static final ConstantItem RESTORE_DEVICE;
    public static final ConstantItem TASKBAR_PINNING;
    public static final ConstantItem THEMED_ICONS;
    public static final ConstantItem WORKSPACE_SIZE;
    public static final ConstantItem WORK_EDU_STEP;
    private final Context deviceProtectedStorageContext;
    private final Context encryptedContext;

    /* loaded from: classes.dex */
    public final class Companion {
        public static LauncherPrefs get(Context context) {
            kotlin.jvm.internal.h.e(context, "context");
            Object obj = LauncherPrefs.INSTANCE.get(context);
            kotlin.jvm.internal.h.d(obj, "INSTANCE.get(context)");
            return (LauncherPrefs) obj;
        }

        public static /* synthetic */ void getBOOT_AWARE_PREFS_KEY$annotations() {
        }

        public final ConstantItem backedUpItem(String sharedPrefKey, Object obj, boolean z4) {
            kotlin.jvm.internal.h.e(sharedPrefKey, "sharedPrefKey");
            return new ConstantItem(sharedPrefKey, true, obj, z4);
        }

        public final ConstantItem nonRestorableItem(String sharedPrefKey, Object obj, boolean z4) {
            kotlin.jvm.internal.h.e(sharedPrefKey, "sharedPrefKey");
            return new ConstantItem(sharedPrefKey, false, obj, z4);
        }
    }

    static {
        Companion companion = new Companion();
        Companion = companion;
        INSTANCE = new MainThreadInitializedObject(LauncherPrefs$Companion$INSTANCE$1.INSTANCE);
        ICON_STATE = companion.nonRestorableItem("pref_icon_shape_path", "", true);
        ALL_APPS_OVERVIEW_THRESHOLD = companion.nonRestorableItem("pref_all_apps_overview_threshold", 180, true);
        Boolean bool = Boolean.FALSE;
        THEMED_ICONS = companion.backedUpItem("themed_icons", bool, true);
        PROMISE_ICON_IDS = companion.backedUpItem("promise_icon_ids", "", false);
        WORK_EDU_STEP = companion.backedUpItem("showed_work_profile_edu", 0, false);
        WORKSPACE_SIZE = companion.backedUpItem("migration_src_workspace_size", "", true);
        HOTSEAT_COUNT = companion.backedUpItem("migration_src_hotseat_count", -1, true);
        TASKBAR_PINNING = companion.backedUpItem("TASKBAR_PINNING_KEY", bool, false);
        DEVICE_TYPE = companion.backedUpItem("migration_src_device_type", 0, true);
        DB_FILE = companion.backedUpItem("migration_src_db_file", "", true);
        RESTORE_DEVICE = companion.backedUpItem("restored_task_pending", 0, true);
        APP_WIDGET_IDS = companion.backedUpItem("appwidget_ids", "", false);
        OLD_APP_WIDGET_IDS = companion.backedUpItem("appwidget_old_ids", "", false);
        GRID_NAME = new ConstantItem("idp_grid_name", true, null, true, String.class);
        Class type = Boolean.TYPE;
        LauncherPrefs$Companion$ALLOW_ROTATION$1 defaultValueFromContext = new m3.l() { // from class: com.android.launcher3.LauncherPrefs$Companion$ALLOW_ROTATION$1
            @Override // m3.l
            public final Object invoke(Object obj) {
                Context it = (Context) obj;
                kotlin.jvm.internal.h.e(it, "it");
                return Boolean.valueOf(RotationHelper.getAllowRotationDefaultValue(((DisplayController) DisplayController.INSTANCE.get(it)).getInfo()));
            }
        };
        kotlin.jvm.internal.h.e(type, "type");
        kotlin.jvm.internal.h.e(defaultValueFromContext, "defaultValueFromContext");
        ALLOW_ROTATION = new ContextualItem(defaultValueFromContext, false, type);
        new ConstantItem("is_startup_data_boot_aware", false, bool, true);
    }

    public LauncherPrefs(Context encryptedContext) {
        kotlin.jvm.internal.h.e(encryptedContext, "encryptedContext");
        this.encryptedContext = encryptedContext;
        this.deviceProtectedStorageContext = encryptedContext.createDeviceProtectedStorageContext();
    }

    public static final ConstantItem backedUpItem(String str, Object obj, boolean z4) {
        return Companion.backedUpItem(str, obj, z4);
    }

    public static final LauncherPrefs get(Context context) {
        return Companion.get(context);
    }

    public static final SharedPreferences getDevicePrefs(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("com.android.launcher3.device.prefs", 0);
        kotlin.jvm.internal.h.d(sharedPreferences, "context.applicationConte…ODE_PRIVATE\n            )");
        return sharedPreferences;
    }

    private final SharedPreferences getEncryptedPrefs(Item item) {
        return this.encryptedContext.getSharedPreferences(item.isBackedUp() ? "com.android.launcher3.prefs" : "com.android.launcher3.device.prefs", 0);
    }

    private final Object getInner(Item item, Object obj) {
        int i4 = LauncherPrefsKt.f4461a;
        SharedPreferences encryptedPrefs = getEncryptedPrefs(item);
        kotlin.jvm.internal.h.d(encryptedPrefs, "item.encryptedPrefs");
        Class type = item.getType();
        if (kotlin.jvm.internal.h.a(type, String.class)) {
            return encryptedPrefs.getString(item.getSharedPrefKey(), obj instanceof String ? (String) obj : null);
        }
        if (kotlin.jvm.internal.h.a(type, Boolean.TYPE) ? true : kotlin.jvm.internal.h.a(type, Boolean.class)) {
            String sharedPrefKey = item.getSharedPrefKey();
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlin.Boolean");
            return Boolean.valueOf(encryptedPrefs.getBoolean(sharedPrefKey, ((Boolean) obj).booleanValue()));
        }
        if (kotlin.jvm.internal.h.a(type, Integer.TYPE) ? true : kotlin.jvm.internal.h.a(type, Integer.class)) {
            String sharedPrefKey2 = item.getSharedPrefKey();
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlin.Int");
            return Integer.valueOf(encryptedPrefs.getInt(sharedPrefKey2, ((Integer) obj).intValue()));
        }
        if (kotlin.jvm.internal.h.a(type, Float.TYPE) ? true : kotlin.jvm.internal.h.a(type, Float.class)) {
            String sharedPrefKey3 = item.getSharedPrefKey();
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlin.Float");
            return Float.valueOf(encryptedPrefs.getFloat(sharedPrefKey3, ((Float) obj).floatValue()));
        }
        if (kotlin.jvm.internal.h.a(type, Long.TYPE) ? true : kotlin.jvm.internal.h.a(type, Long.class)) {
            String sharedPrefKey4 = item.getSharedPrefKey();
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlin.Long");
            return Long.valueOf(encryptedPrefs.getLong(sharedPrefKey4, ((Long) obj).longValue()));
        } else if (kotlin.jvm.internal.h.a(type, Set.class)) {
            return encryptedPrefs.getStringSet(item.getSharedPrefKey(), obj instanceof Set ? (Set) obj : null);
        } else {
            Class type2 = item.getType();
            throw new IllegalArgumentException("item type: " + type2 + " is not compatible with sharedPref methods");
        }
    }

    public static final SharedPreferences getPrefs(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0);
        kotlin.jvm.internal.h.d(sharedPreferences, "context.applicationConte…ODE_PRIVATE\n            )");
        return sharedPreferences;
    }

    public static final ConstantItem nonRestorableItem(String str, Object obj, boolean z4) {
        return Companion.nonRestorableItem(str, obj, z4);
    }

    private final List prepareToPutValues(Pair[] pairArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Pair pair : pairArr) {
            SharedPreferences encryptedPrefs = getEncryptedPrefs((Item) pair.c());
            Object obj = linkedHashMap.get(encryptedPrefs);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(encryptedPrefs, obj);
            }
            ((List) obj).add(pair);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        int i4 = LauncherPrefsKt.f4461a;
        ArrayList arrayList = new ArrayList(linkedHashMap2.size());
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            SharedPreferences.Editor prepareToPutValues$lambda$6$lambda$5$lambda$4 = ((SharedPreferences) entry.getKey()).edit();
            for (Pair pair2 : (Iterable) entry.getValue()) {
                kotlin.jvm.internal.h.d(prepareToPutValues$lambda$6$lambda$5$lambda$4, "prepareToPutValues$lambda$6$lambda$5$lambda$4");
                Item item = (Item) pair2.c();
                Object d4 = pair2.d();
                Class type = item.getType();
                if (kotlin.jvm.internal.h.a(type, String.class)) {
                    kotlin.jvm.internal.h.d(prepareToPutValues$lambda$6$lambda$5$lambda$4.putString(item.getSharedPrefKey(), d4 instanceof String ? (String) d4 : null), "putString(item.sharedPrefKey, value as? String)");
                } else if (kotlin.jvm.internal.h.a(type, Boolean.TYPE) ? true : kotlin.jvm.internal.h.a(type, Boolean.class)) {
                    String sharedPrefKey = item.getSharedPrefKey();
                    kotlin.jvm.internal.h.c(d4, "null cannot be cast to non-null type kotlin.Boolean");
                    kotlin.jvm.internal.h.d(prepareToPutValues$lambda$6$lambda$5$lambda$4.putBoolean(sharedPrefKey, ((Boolean) d4).booleanValue()), "putBoolean(item.sharedPrefKey, value as Boolean)");
                } else if (kotlin.jvm.internal.h.a(type, Integer.TYPE) ? true : kotlin.jvm.internal.h.a(type, Integer.class)) {
                    String sharedPrefKey2 = item.getSharedPrefKey();
                    kotlin.jvm.internal.h.c(d4, "null cannot be cast to non-null type kotlin.Int");
                    kotlin.jvm.internal.h.d(prepareToPutValues$lambda$6$lambda$5$lambda$4.putInt(sharedPrefKey2, ((Integer) d4).intValue()), "putInt(item.sharedPrefKey, value as Int)");
                } else if (kotlin.jvm.internal.h.a(type, Float.TYPE) ? true : kotlin.jvm.internal.h.a(type, Float.class)) {
                    String sharedPrefKey3 = item.getSharedPrefKey();
                    kotlin.jvm.internal.h.c(d4, "null cannot be cast to non-null type kotlin.Float");
                    kotlin.jvm.internal.h.d(prepareToPutValues$lambda$6$lambda$5$lambda$4.putFloat(sharedPrefKey3, ((Float) d4).floatValue()), "putFloat(item.sharedPrefKey, value as Float)");
                } else if (kotlin.jvm.internal.h.a(type, Long.TYPE) ? true : kotlin.jvm.internal.h.a(type, Long.class)) {
                    String sharedPrefKey4 = item.getSharedPrefKey();
                    kotlin.jvm.internal.h.c(d4, "null cannot be cast to non-null type kotlin.Long");
                    kotlin.jvm.internal.h.d(prepareToPutValues$lambda$6$lambda$5$lambda$4.putLong(sharedPrefKey4, ((Long) d4).longValue()), "putLong(item.sharedPrefKey, value as Long)");
                } else if (!kotlin.jvm.internal.h.a(type, Set.class)) {
                    throw new IllegalArgumentException("item type: " + item.getType() + " is not compatible with sharedPref methods");
                } else {
                    kotlin.jvm.internal.h.d(prepareToPutValues$lambda$6$lambda$5$lambda$4.putStringSet(item.getSharedPrefKey(), d4 instanceof Set ? (Set) d4 : null), "putStringSet(item.shared…y, value as? Set<String>)");
                }
            }
            arrayList.add(prepareToPutValues$lambda$6$lambda$5$lambda$4);
        }
        return arrayList;
    }

    private final List prepareToRemove(Item[] itemArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Item item : itemArr) {
            SharedPreferences encryptedPrefs = getEncryptedPrefs(item);
            Object obj = linkedHashMap.get(encryptedPrefs);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(encryptedPrefs, obj);
            }
            ((List) obj).add(item);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        int i4 = LauncherPrefsKt.f4461a;
        ArrayList arrayList = new ArrayList(linkedHashMap2.size());
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            SharedPreferences.Editor edit = ((SharedPreferences) entry.getKey()).edit();
            for (Item item2 : (List) entry.getValue()) {
                edit.remove(item2.getSharedPrefKey());
            }
            arrayList.add(edit);
        }
        return arrayList;
    }

    public final void addListener(SharedPreferences.OnSharedPreferenceChangeListener listener, Item... itemArr) {
        kotlin.jvm.internal.h.e(listener, "listener");
        ArrayList arrayList = new ArrayList(itemArr.length);
        for (Item item : itemArr) {
            int i4 = LauncherPrefsKt.f4461a;
            SharedPreferences encryptedPrefs = getEncryptedPrefs(item);
            kotlin.jvm.internal.h.d(encryptedPrefs, "item.encryptedPrefs");
            arrayList.add(encryptedPrefs);
        }
        for (SharedPreferences sharedPreferences : kotlin.collections.s.k(kotlin.collections.s.m(arrayList))) {
            sharedPreferences.registerOnSharedPreferenceChangeListener(listener);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0075, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean has(com.android.launcher3.Item... r8) {
        /*
            r7 = this;
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            int r1 = r8.length
            r2 = 0
            r3 = r2
        L8:
            if (r3 >= r1) goto L2d
            r4 = r8[r3]
            int r5 = com.android.launcher3.LauncherPrefsKt.f4461a
            android.content.SharedPreferences r5 = r7.getEncryptedPrefs(r4)
            java.lang.String r6 = "item.encryptedPrefs"
            kotlin.jvm.internal.h.d(r5, r6)
            java.lang.Object r6 = r0.get(r5)
            if (r6 != 0) goto L25
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r0.put(r5, r6)
        L25:
            java.util.List r6 = (java.util.List) r6
            r6.add(r4)
            int r3 = r3 + 1
            goto L8
        L2d:
            java.util.Set r7 = r0.entrySet()
            java.util.Iterator r7 = r7.iterator()
        L35:
            boolean r8 = r7.hasNext()
            r0 = 1
            if (r8 == 0) goto L78
            java.lang.Object r8 = r7.next()
            java.util.Map$Entry r8 = (java.util.Map.Entry) r8
            java.lang.Object r1 = r8.getKey()
            android.content.SharedPreferences r1 = (android.content.SharedPreferences) r1
            java.lang.Object r8 = r8.getValue()
            java.util.List r8 = (java.util.List) r8
            boolean r3 = r8 instanceof java.util.Collection
            if (r3 == 0) goto L59
            boolean r3 = r8.isEmpty()
            if (r3 == 0) goto L59
            goto L75
        L59:
            java.util.Iterator r8 = r8.iterator()
        L5d:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L75
            java.lang.Object r3 = r8.next()
            com.android.launcher3.Item r3 = (com.android.launcher3.Item) r3
            java.lang.String r3 = r3.getSharedPrefKey()
            boolean r3 = r1.contains(r3)
            r3 = r3 ^ r0
            if (r3 == 0) goto L5d
            r0 = r2
        L75:
            if (r0 != 0) goto L35
            return r2
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.LauncherPrefs.has(com.android.launcher3.Item[]):boolean");
    }

    public final void put(Pair... pairArr) {
        Iterator it = ((ArrayList) prepareToPutValues(pairArr)).iterator();
        while (it.hasNext()) {
            ((SharedPreferences.Editor) it.next()).apply();
        }
    }

    public final void putSync(Pair... pairArr) {
        Iterator it = ((ArrayList) prepareToPutValues(pairArr)).iterator();
        while (it.hasNext()) {
            ((SharedPreferences.Editor) it.next()).commit();
        }
    }

    public final void remove(Item... itemArr) {
        Iterator it = ((ArrayList) prepareToRemove(itemArr)).iterator();
        while (it.hasNext()) {
            ((SharedPreferences.Editor) it.next()).apply();
        }
    }

    public final void removeListener(SharedPreferences.OnSharedPreferenceChangeListener listener, Item... itemArr) {
        kotlin.jvm.internal.h.e(listener, "listener");
        ArrayList arrayList = new ArrayList(itemArr.length);
        for (Item item : itemArr) {
            int i4 = LauncherPrefsKt.f4461a;
            SharedPreferences encryptedPrefs = getEncryptedPrefs(item);
            kotlin.jvm.internal.h.d(encryptedPrefs, "item.encryptedPrefs");
            arrayList.add(encryptedPrefs);
        }
        for (SharedPreferences sharedPreferences : kotlin.collections.s.k(kotlin.collections.s.m(arrayList))) {
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(listener);
        }
    }

    public final void removeSync(Item... itemArr) {
        Iterator it = ((ArrayList) prepareToRemove(itemArr)).iterator();
        while (it.hasNext()) {
            ((SharedPreferences.Editor) it.next()).commit();
        }
    }

    public final Object get(ContextualItem item) {
        kotlin.jvm.internal.h.e(item, "item");
        return getInner(item, item.defaultValueFromContext(this.encryptedContext));
    }

    public final Object get(ConstantItem item) {
        kotlin.jvm.internal.h.e(item, "item");
        return getInner(item, item.getDefaultValue());
    }

    public final void put(ConstantItem item, Object value) {
        kotlin.jvm.internal.h.e(item, "item");
        kotlin.jvm.internal.h.e(value, "value");
        put(new Pair(item, value));
    }
}
