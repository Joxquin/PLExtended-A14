package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.app.search.SearchTarget;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.j;
import com.android.app.search.SearchTargetExtras$ResultSource;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.function.Supplier;
import s.C1391a;
/* loaded from: classes.dex */
public final class D2 {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f6521a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f6522b;

    /* renamed from: c  reason: collision with root package name */
    public static final UserHandle f6523c;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        Log.isLoggable("SearchLogging", 2);
        f6521a = Log.isLoggable("WebAppSearchLogging", 2);
        f6522b = Log.isLoggable("AGASessionSummaryLog", 2);
        f6523c = Process.myUserHandle();
    }

    public static void a(Query query, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((SearchTarget) it.next()).getExtras().putParcelable("input_query", query);
        }
    }

    public static String b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String str = "Bundle{";
        for (String str2 : bundle.keySet()) {
            str = str + str2 + "=" + bundle.get(str2) + ",";
        }
        return C1391a.a(str, "}");
    }

    public static LauncherAtom$Attribute c(final String str) {
        int ordinal;
        try {
            ordinal = ((SearchTargetExtras$ResultSource) Arrays.stream(SearchTargetExtras$ResultSource.values()).filter(new Predicate() { // from class: z0.d
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return SearchTargetExtras$ResultSource.a(str, (SearchTargetExtras$ResultSource) obj);
                }
            }).findFirst().orElseThrow(new Supplier() { // from class: z0.e
                @Override // java.util.function.Supplier
                public final Object get() {
                    return new IllegalArgumentException(j.a("Unable to resolve source: ", str));
                }
            })).ordinal();
        } catch (IllegalArgumentException e4) {
            Log.w("SearchTargetUtil", "Failed to identify result source", e4);
        }
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            Log.w("SearchTargetUtil", "No Attribute defined for result source = ".concat(str));
                            return LauncherAtom$Attribute.UNKNOWN;
                        }
                        return LauncherAtom$Attribute.DATA_SOURCE_APPSEARCH_ENTITY_SRP_PREVIEW;
                    }
                    return LauncherAtom$Attribute.DATA_SOURCE_APPSEARCH_CATEGORY_SRP_PREVIEW;
                }
                return LauncherAtom$Attribute.DATA_SOURCE_APPSEARCH_APP_SRP_PREVIEW;
            }
            return LauncherAtom$Attribute.DATA_SOURCE_APPSEARCH_APP_PREVIEW;
        }
        return LauncherAtom$Attribute.DATA_SOURCE_AIAI_SEARCH_ROOT;
    }

    public static SearchTarget d(ItemInfo itemInfo) {
        String str;
        ComponentName targetComponent = itemInfo instanceof AppInfo ? ((AppInfo) itemInfo).componentName : itemInfo.getTargetComponent();
        String className = targetComponent != null ? targetComponent.getClassName() : "";
        Bundle bundle = new Bundle();
        bundle.putString("class", className);
        UserHandle userHandle = itemInfo.user;
        StringBuilder sb = new StringBuilder("APPLICATION:" + userHandle.getIdentifier() + ":");
        if (targetComponent == null) {
            sb.append(" : ");
            str = sb.toString();
        } else {
            str = ((Object) sb) + targetComponent.getPackageName() + ":" + targetComponent.getClassName();
        }
        return new SearchTarget.Builder(1, "icon", str).setPackageName(itemInfo.getTargetPackage()).setExtras(bundle).setUserHandle(itemInfo.user).build();
    }

    public static List e(SearchTarget searchTarget) {
        LauncherAtom$Attribute launcherAtom$Attribute;
        ArrayList arrayList = new ArrayList();
        int resultType = searchTarget.getResultType();
        int i4 = 6516532 & resultType;
        int i5 = 32971 & resultType;
        int i6 = 9175040 & resultType;
        LauncherAtom$Attribute launcherAtom$Attribute2 = LauncherAtom$Attribute.UNKNOWN;
        if (i4 != 0) {
            switch (resultType) {
                case 4:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_PEOPLE;
                    break;
                case 16:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_SETTING;
                    break;
                case 32:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_SCREENSHOT;
                    break;
                case 256:
                    if (!FeatureFlags.ENABLE_SEARCH_UNINSTALLED_APPS.get()) {
                        launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_PLAY;
                        break;
                    } else {
                        launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_PLAY_GMS;
                        break;
                    }
                case 512:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_FALLBACK;
                    break;
                case 1024:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_ASSISTANT;
                    break;
                case 2048:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_CHROMETAB;
                    break;
                case 8192:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_TIPS;
                    break;
                case 16384:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_PEOPLE_TILE;
                    break;
                case 65536:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_ASSISTANT_MEMORY;
                    break;
                case 131072:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_WEB_SUGGEST;
                    break;
                case 2097152:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_VIDEO;
                    break;
                case QuickStepContract.SYSUI_STATE_BACK_DISABLED /* 4194304 */:
                    launcherAtom$Attribute = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_LOCATION;
                    break;
                default:
                    launcherAtom$Attribute = launcherAtom$Attribute2;
                    break;
            }
            arrayList.add(launcherAtom$Attribute);
        }
        if (i5 != 0) {
            arrayList.add(i5 != 1 ? i5 != 2 ? i5 != 8 ? i5 != 64 ? i5 != 128 ? i5 != 32768 ? launcherAtom$Attribute2 : LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_LEGACY_SHORTCUT : LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_WIDGETS : LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_SLICE : LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_ACTION : LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_SHORTCUT : LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_APPLICATION);
        }
        if (i6 != 0) {
            if (i6 == 8388608) {
                launcherAtom$Attribute2 = LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_TEXT_HEADER;
            }
            arrayList.add(launcherAtom$Attribute2);
        }
        if ((resultType & 1048576) != 0) {
            arrayList.add(LauncherAtom$Attribute.ALL_APPS_SEARCH_RESULT_SYSTEM_POINTER);
        }
        String string = searchTarget.getExtras().getString("data_donated_source");
        if (string != null) {
            arrayList.add(c(string));
        }
        return arrayList;
    }

    public static int f(Bundle bundle) {
        int i4 = bundle.getBoolean("quick_launch", false) ? 4 : 0;
        if (bundle.getBoolean("proxy_web_item", false)) {
            i4 |= 8;
        }
        if (bundle.getBoolean("hide_icon", false)) {
            i4 |= 2;
        }
        return bundle.getBoolean("hide_subtitle", false) ? i4 | 1 : i4;
    }

    public static Query g(SearchTarget searchTarget) {
        if (searchTarget.getExtras() == null) {
            return null;
        }
        return (Query) searchTarget.getExtras().getParcelable("input_query", Query.class);
    }

    public static boolean h(int i4, int i5) {
        return (i4 & i5) != 0;
    }

    public static void i(View view) {
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(view.getContext());
        AppInfo app = activityContext.getAppsView().getAppsStore().getApp(new ComponentKey(new ComponentName("com.google.android.googlequicksearchbox", "com.google.android.googlequicksearchbox.SearchActivity"), f6523c));
        if (app == null) {
            return;
        }
        activityContext.startActivitySafely(view, app.intent, app);
        activityContext.getStatsLogManager().logger().log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_G_TAP);
    }

    public static void j(String str, List list) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        StringBuilder sb = new StringBuilder(" query=");
        sb.append(str);
        sb.append(" size=");
        sb.append(list == null ? "0" : Integer.valueOf(list.size()));
        Log.d("SearchTargetUtil", sb.toString());
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SearchTarget searchTarget = (SearchTarget) it.next();
            StringBuilder sb2 = new StringBuilder("layoutType=");
            sb2.append(searchTarget.getLayoutType());
            sb2.append(" resultType=");
            sb2.append(searchTarget.getResultType());
            sb2.append(" packageName=");
            sb2.append(searchTarget.getPackageName());
            String str7 = "";
            if (searchTarget.getExtras() == null) {
                str2 = "";
            } else {
                str2 = " extras=" + b(searchTarget.getExtras());
            }
            sb2.append(str2);
            if (searchTarget.getShortcutInfo() == null) {
                str3 = "";
            } else {
                str3 = " shortcutInfo=" + searchTarget.getShortcutInfo().toString();
            }
            sb2.append(str3);
            if (searchTarget.getSearchAction() == null) {
                str4 = "";
            } else {
                str4 = " searchAction=" + ((Object) searchTarget.getSearchAction().getTitle());
            }
            sb2.append(str4);
            if (searchTarget.getSearchAction() == null || searchTarget.getSearchAction().getExtras() == null) {
                str5 = "";
            } else {
                str5 = " searchActionExtras=" + b(searchTarget.getSearchAction().getExtras());
            }
            sb2.append(str5);
            if (searchTarget.getSliceUri() == null) {
                str6 = "";
            } else {
                str6 = " sliceUri=" + searchTarget.getSliceUri().toString();
            }
            sb2.append(str6);
            sb2.append("ParentID: ");
            sb2.append(searchTarget.getParentId());
            sb2.append(" targetID: ");
            sb2.append(searchTarget.getId());
            if (searchTarget.getAppWidgetProviderInfo() != null) {
                str7 = " widget=" + searchTarget.getAppWidgetProviderInfo().toString();
            }
            sb2.append(str7);
            Log.d("SearchTargetUtil", sb2.toString());
        }
    }

    public static void k(int i4, List list) {
        list.remove(i4);
        if (list.size() <= i4 || !((SearchTarget) list.get(i4)).getLayoutType().equals("empty_divider")) {
            return;
        }
        list.remove(i4);
    }
}
