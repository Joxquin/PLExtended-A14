package e2;

import android.app.search.Query;
import android.app.search.SearchTarget;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.os.Bundle;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.search.StringMatcherUtility;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import i1.C0979a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class g implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final SearchCallback f9024a;

    /* renamed from: b  reason: collision with root package name */
    public final String f9025b;

    /* renamed from: c  reason: collision with root package name */
    public final Query f9026c;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList f9027d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public boolean f9028e = false;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ h f9029f;

    public g(h hVar, String str, SearchCallback searchCallback) {
        this.f9029f = hVar;
        this.f9025b = str;
        this.f9024a = searchCallback;
        this.f9026c = new Query(str, System.currentTimeMillis(), (Bundle) null);
    }

    public final void a() {
        this.f9028e = true;
        this.f9029f.f9032c.removeCallbacksAndMessages(this);
        SearchCallback searchCallback = this.f9024a;
        final String str = this.f9025b;
        PopupDataProvider popupDataProvider = this.f9029f.f9031b;
        final ArrayList arrayList = new ArrayList();
        popupDataProvider.getAllWidgets().stream().filter(new C0979a()).forEach(new Consumer() { // from class: i1.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                final String str2 = str;
                ArrayList arrayList2 = arrayList;
                WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) obj;
                String charSequence = widgetsListBaseEntry.mPkgItem.title.toString();
                final StringMatcherUtility.StringMatcher stringMatcher = new StringMatcherUtility.StringMatcher();
                boolean matches = StringMatcherUtility.matches(str2, charSequence, stringMatcher);
                List list = widgetsListBaseEntry.mWidgets;
                if (!matches) {
                    list = (List) list.stream().filter(new Predicate() { // from class: i1.c
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj2) {
                            return StringMatcherUtility.matches(str2, ((WidgetItem) obj2).label, stringMatcher);
                        }
                    }).collect(Collectors.toList());
                }
                if (list.size() > 0) {
                    PackageItemInfo packageItemInfo = widgetsListBaseEntry.mPkgItem;
                    String str3 = widgetsListBaseEntry.mTitleSectionName;
                    arrayList2.add(WidgetsListHeaderEntry.createForSearch(packageItemInfo, str3, list));
                    arrayList2.add(new WidgetsListContentEntry(packageItemInfo, str3, list, 0));
                }
            }
        });
        searchCallback.onSearchResult(str, arrayList);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        List list = (List) obj;
        if (this.f9028e) {
            return;
        }
        this.f9029f.f9032c.removeCallbacksAndMessages(this);
        this.f9027d.addAll(list);
        SearchCallback searchCallback = this.f9024a;
        String str = this.f9025b;
        final h hVar = this.f9029f;
        ArrayList arrayList = this.f9027d;
        hVar.getClass();
        final ArrayList arrayList2 = new ArrayList();
        final HashSet hashSet = new HashSet();
        final HashSet hashSet2 = new HashSet();
        final HashSet hashSet3 = new HashSet();
        arrayList.forEach(new Consumer() { // from class: e2.c
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                Set set = hashSet;
                Set set2 = hashSet2;
                Set set3 = hashSet3;
                SearchTarget searchTarget = (SearchTarget) obj2;
                if (searchTarget.getResultType() == 1) {
                    set.add(new PackageUserKey(searchTarget.getPackageName(), searchTarget.getUserHandle()));
                } else if (searchTarget.getResultType() == 128 && searchTarget.getAppWidgetProviderInfo() != null) {
                    set2.add(new ComponentKey(searchTarget.getAppWidgetProviderInfo().provider, searchTarget.getUserHandle()));
                } else if (searchTarget.getResultType() == 32768 && searchTarget.getExtras().containsKey("class")) {
                    set3.add(new ComponentKey(new ComponentName(searchTarget.getPackageName(), searchTarget.getExtras().getString("class")), searchTarget.getUserHandle()));
                }
            }
        });
        hVar.f9031b.getAllWidgets().stream().filter(new d()).forEach(new Consumer() { // from class: e2.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                h hVar2 = h.this;
                Set set = hashSet;
                final Set set2 = hashSet2;
                final Set set3 = hashSet3;
                ArrayList arrayList3 = arrayList2;
                WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) obj2;
                hVar2.getClass();
                PackageItemInfo packageItemInfo = widgetsListBaseEntry.mPkgItem;
                boolean contains = set.contains(new PackageUserKey(packageItemInfo.packageName, packageItemInfo.user));
                List list2 = widgetsListBaseEntry.mWidgets;
                if (!contains) {
                    list2 = (List) list2.stream().filter(new Predicate() { // from class: e2.f
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj3) {
                            ShortcutConfigActivityInfo shortcutConfigActivityInfo;
                            Set set4 = set2;
                            Set set5 = set3;
                            WidgetItem widgetItem = (WidgetItem) obj3;
                            LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = widgetItem.widgetInfo;
                            return (launcherAppWidgetProviderInfo != null && set4.contains(new ComponentKey(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider, launcherAppWidgetProviderInfo.getProfile()))) || ((shortcutConfigActivityInfo = widgetItem.activityInfo) != null && set5.contains(new ComponentKey(shortcutConfigActivityInfo.getComponent(), shortcutConfigActivityInfo.getUser())));
                        }
                    }).collect(Collectors.toList());
                }
                if (list2.size() > 0) {
                    PackageItemInfo packageItemInfo2 = widgetsListBaseEntry.mPkgItem;
                    String str2 = widgetsListBaseEntry.mTitleSectionName;
                    arrayList3.add(WidgetsListHeaderEntry.createForSearch(packageItemInfo2, str2, list2));
                    arrayList3.add(new WidgetsListContentEntry(packageItemInfo2, str2, list2, 0));
                }
            }
        });
        searchCallback.onSearchResult(str, arrayList2);
    }
}
