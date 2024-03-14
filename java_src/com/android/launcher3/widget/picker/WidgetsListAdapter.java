package com.android.launcher3.widget.picker;

import android.content.Context;
import android.os.Process;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.recyclerview.widget.AbstractC0280l0;
import androidx.recyclerview.widget.C0298v;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.Z;
import androidx.recyclerview.widget.r;
import com.android.launcher3.Launcher;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.recyclerview.ViewHolderBinder;
import com.android.launcher3.util.LabelComparator;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.model.WidgetListSpaceEntry;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import com.android.launcher3.widget.picker.WidgetsTwoPaneSheet;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.OptionalInt;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class WidgetsListAdapter extends Z implements OnHeaderClickListener {
    private final List mAllEntries;
    private final Context mContext;
    private Predicate mFilter;
    private k mHeaderAndSelectedContentFilter;
    private WidgetsTwoPaneSheet.HeaderChangeListener mHeaderChangeListener;
    private int mMaxHorizontalSpan;
    private PackageUserKey mPendingClickHeader;
    private RecyclerView mRecyclerView;
    private final WidgetListBaseRowEntryComparator mRowComparator;
    private final SparseArray mViewHolderBinders;
    private ArrayList mVisibleEntries;
    private PackageUserKey mWidgetsContentVisiblePackageUserKey;

    /* loaded from: classes.dex */
    public final class WidgetListBaseRowEntryComparator implements Comparator {
        private final LabelComparator mComparator = new LabelComparator();

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) obj;
            WidgetsListBaseEntry widgetsListBaseEntry2 = (WidgetsListBaseEntry) obj2;
            int compare = this.mComparator.compare(widgetsListBaseEntry.mPkgItem.title.toString(), widgetsListBaseEntry2.mPkgItem.title.toString());
            if (compare != 0) {
                return compare;
            }
            PackageItemInfo packageItemInfo = widgetsListBaseEntry.mPkgItem;
            if (packageItemInfo.user.equals(widgetsListBaseEntry2.mPkgItem.user)) {
                return 0;
            }
            return packageItemInfo.user.equals(Process.myUserHandle()) ? -1 : 1;
        }
    }

    public WidgetsListAdapter(Context context, LayoutInflater layoutInflater, h hVar, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener, boolean z4) {
        SparseArray sparseArray = new SparseArray();
        this.mViewHolderBinders = sparseArray;
        this.mRowComparator = new WidgetListBaseRowEntryComparator();
        this.mAllEntries = new ArrayList();
        this.mVisibleEntries = new ArrayList();
        this.mWidgetsContentVisiblePackageUserKey = null;
        this.mHeaderAndSelectedContentFilter = new k(this, 1);
        this.mFilter = null;
        this.mContext = context;
        this.mMaxHorizontalSpan = WidgetSizes.getWidgetSizePx(((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile(), 4, 1).getWidth();
        sparseArray.put(R.id.view_type_widgets_list, new WidgetsListTableViewHolderBinder(context, layoutInflater, onClickListener, onLongClickListener));
        sparseArray.put(R.id.view_type_widgets_header, new WidgetsListHeaderViewHolderBinder(layoutInflater, this, z4));
        sparseArray.put(R.id.view_type_widgets_space, new WidgetsSpaceViewHolderBinder(hVar));
    }

    public static boolean b(WidgetsListAdapter widgetsListAdapter, PackageUserKey packageUserKey, int i4) {
        WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) widgetsListAdapter.mVisibleEntries.get(i4);
        return (widgetsListBaseEntry instanceof WidgetsListHeaderEntry) && matchesKey(packageUserKey, widgetsListBaseEntry);
    }

    public static /* synthetic */ boolean c(WidgetsListAdapter widgetsListAdapter, WidgetsListBaseEntry widgetsListBaseEntry) {
        widgetsListAdapter.getClass();
        return (widgetsListBaseEntry instanceof WidgetsListHeaderEntry) || PackageUserKey.fromPackageItemInfo(widgetsListBaseEntry.mPkgItem).equals(widgetsListAdapter.mWidgetsContentVisiblePackageUserKey);
    }

    public static /* synthetic */ boolean d(WidgetsListAdapter widgetsListAdapter, WidgetsListBaseEntry widgetsListBaseEntry) {
        Predicate predicate = widgetsListAdapter.mFilter;
        return (((predicate == null || predicate.test(widgetsListBaseEntry)) && widgetsListAdapter.mHeaderAndSelectedContentFilter.test(widgetsListBaseEntry)) || (widgetsListBaseEntry instanceof WidgetListSpaceEntry)) && (widgetsListAdapter.mHeaderChangeListener == null || !(widgetsListBaseEntry instanceof WidgetsListContentEntry));
    }

    public static /* synthetic */ WidgetsListBaseEntry e(WidgetsListAdapter widgetsListAdapter, WidgetsListBaseEntry widgetsListBaseEntry) {
        widgetsListAdapter.getClass();
        return ((widgetsListBaseEntry instanceof WidgetsListHeaderEntry) && matchesKey(widgetsListAdapter.mWidgetsContentVisiblePackageUserKey, widgetsListBaseEntry)) ? ((WidgetsListHeaderEntry) widgetsListBaseEntry).withWidgetListShown() : widgetsListBaseEntry instanceof WidgetsListContentEntry ? ((WidgetsListContentEntry) widgetsListBaseEntry).withMaxSpanSize(widgetsListAdapter.mMaxHorizontalSpan) : widgetsListBaseEntry;
    }

    private static boolean matchesKey(PackageUserKey packageUserKey, WidgetsListBaseEntry widgetsListBaseEntry) {
        if (packageUserKey != null && widgetsListBaseEntry.mPkgItem.packageName.equals(packageUserKey.mPackageName)) {
            PackageItemInfo packageItemInfo = widgetsListBaseEntry.mPkgItem;
            return packageItemInfo.widgetCategory == packageUserKey.mWidgetCategory && packageItemInfo.user.equals(packageUserKey.mUser);
        }
        return false;
    }

    private void updateVisibleEntries() {
        OptionalInt empty;
        RecyclerView recyclerView;
        final PackageUserKey packageUserKey = this.mPendingClickHeader;
        OptionalInt findFirst = IntStream.range(0, this.mVisibleEntries.size()).filter(new IntPredicate() { // from class: com.android.launcher3.widget.picker.m
            @Override // java.util.function.IntPredicate
            public final boolean test(int i4) {
                return WidgetsListAdapter.b(WidgetsListAdapter.this, packageUserKey, i4);
            }
        }).findFirst();
        if (!findFirst.isPresent() || (recyclerView = this.mRecyclerView) == null) {
            empty = OptionalInt.empty();
        } else {
            AbstractC0280l0 layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null) {
                empty = OptionalInt.empty();
            } else {
                View findViewByPosition = layoutManager.findViewByPosition(findFirst.getAsInt());
                empty = findViewByPosition == null ? OptionalInt.empty() : OptionalInt.of(AbstractC0280l0.getDecoratedTop(findViewByPosition));
            }
        }
        List list = (List) this.mAllEntries.stream().filter(new k(this, 0)).map(new Function() { // from class: com.android.launcher3.widget.picker.l
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return WidgetsListAdapter.e(WidgetsListAdapter.this, (WidgetsListBaseEntry) obj);
            }
        }).collect(Collectors.toList());
        r a4 = C0298v.a(new WidgetsDiffCallback(this.mVisibleEntries, list), false);
        this.mVisibleEntries.clear();
        this.mVisibleEntries.addAll(list);
        a4.a(this);
        final PackageUserKey packageUserKey2 = this.mPendingClickHeader;
        if (packageUserKey2 != null) {
            OptionalInt findFirst2 = IntStream.range(0, this.mVisibleEntries.size()).filter(new IntPredicate() { // from class: com.android.launcher3.widget.picker.m
                @Override // java.util.function.IntPredicate
                public final boolean test(int i4) {
                    return WidgetsListAdapter.b(WidgetsListAdapter.this, packageUserKey2, i4);
                }
            }).findFirst();
            if (findFirst2.isPresent() && this.mRecyclerView != null) {
                int asInt = findFirst2.getAsInt();
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.mRecyclerView.getLayoutManager();
                if (linearLayoutManager != null) {
                    if (asInt == this.mVisibleEntries.size() - 2) {
                        ArrayList arrayList = this.mVisibleEntries;
                        if (arrayList.get(arrayList.size() - 1) instanceof WidgetsListContentEntry) {
                            linearLayoutManager.scrollToPosition(this.mVisibleEntries.size() - 1);
                        }
                    }
                    linearLayoutManager.scrollToPositionWithOffset(asInt, empty.orElse(0) - this.mRecyclerView.getPaddingTop());
                }
            }
            this.mPendingClickHeader = null;
        }
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemCount() {
        return this.mVisibleEntries.size();
    }

    @Override // androidx.recyclerview.widget.Z
    public final long getItemId(int i4) {
        return Arrays.hashCode(new Object[]{Integer.valueOf(((WidgetsListBaseEntry) this.mVisibleEntries.get(i4)).mPkgItem.hashCode()), Integer.valueOf(getItemViewType(i4))});
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemViewType(int i4) {
        WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) this.mVisibleEntries.get(i4);
        if (widgetsListBaseEntry instanceof WidgetsListContentEntry) {
            return R.id.view_type_widgets_list;
        }
        if (widgetsListBaseEntry instanceof WidgetsListHeaderEntry) {
            return R.id.view_type_widgets_header;
        }
        if (widgetsListBaseEntry instanceof WidgetListSpaceEntry) {
            return R.id.view_type_widgets_space;
        }
        throw new UnsupportedOperationException("ViewHolderBinder not found for " + widgetsListBaseEntry);
    }

    public final String getSectionName(int i4) {
        return ((WidgetsListBaseEntry) this.mVisibleEntries.get(i4)).mTitleSectionName;
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onBindViewHolder(E0 e02, int i4) {
        onBindViewHolder(e02, i4, Collections.EMPTY_LIST);
    }

    @Override // androidx.recyclerview.widget.Z
    public final E0 onCreateViewHolder(RecyclerView recyclerView, int i4) {
        return ((ViewHolderBinder) this.mViewHolderBinders.get(i4)).newViewHolder(recyclerView);
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onDetachedFromRecyclerView() {
        this.mRecyclerView = null;
    }

    public final void onHeaderClicked(boolean z4, PackageUserKey packageUserKey) {
        PackageUserKey packageUserKey2;
        Context context;
        LinearLayout linearLayout;
        WidgetsListHeader widgetsListHeader;
        WidgetsListTableViewHolderBinder widgetsListTableViewHolderBinder;
        LinearLayout linearLayout2;
        WidgetsListTableViewHolderBinder widgetsListTableViewHolderBinder2;
        LinearLayout linearLayout3;
        LinearLayout linearLayout4;
        ScrollView scrollView;
        WidgetsListHeader widgetsListHeader2;
        if (z4 || packageUserKey.equals(this.mWidgetsContentVisiblePackageUserKey)) {
            if (this.mHeaderChangeListener == null || !packageUserKey.equals(this.mWidgetsContentVisiblePackageUserKey)) {
                if (z4) {
                    this.mWidgetsContentVisiblePackageUserKey = packageUserKey;
                    ((ActivityContext) ActivityContext.lookupContext(this.mContext)).getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_WIDGETSTRAY_APP_EXPANDED);
                } else {
                    this.mWidgetsContentVisiblePackageUserKey = null;
                }
                this.mPendingClickHeader = packageUserKey;
                updateVisibleEntries();
                WidgetsTwoPaneSheet.HeaderChangeListener headerChangeListener = this.mHeaderChangeListener;
                if (headerChangeListener == null || (packageUserKey2 = this.mWidgetsContentVisiblePackageUserKey) == null) {
                    return;
                }
                WidgetsTwoPaneSheet.AnonymousClass3 anonymousClass3 = (WidgetsTwoPaneSheet.AnonymousClass3) headerChangeListener;
                WidgetsTwoPaneSheet widgetsTwoPaneSheet = WidgetsTwoPaneSheet.this;
                context = ((AbstractSlideInView) widgetsTwoPaneSheet).mActivityContext;
                WidgetsListContentEntry selectedAppWidgets = ((Launcher) context).getPopupDataProvider().getSelectedAppWidgets(packageUserKey2);
                if (selectedAppWidgets != null) {
                    linearLayout = widgetsTwoPaneSheet.mRightPane;
                    if (linearLayout == null) {
                        return;
                    }
                    widgetsListHeader = widgetsTwoPaneSheet.mSuggestedWidgetsHeader;
                    if (widgetsListHeader != null) {
                        widgetsListHeader2 = widgetsTwoPaneSheet.mSuggestedWidgetsHeader;
                        widgetsListHeader2.setExpanded(false);
                    }
                    widgetsListTableViewHolderBinder = widgetsTwoPaneSheet.mWidgetsListTableViewHolderBinder;
                    linearLayout2 = widgetsTwoPaneSheet.mRightPane;
                    WidgetsRowViewHolder newViewHolder = widgetsListTableViewHolderBinder.newViewHolder(linearLayout2);
                    widgetsListTableViewHolderBinder2 = widgetsTwoPaneSheet.mWidgetsListTableViewHolderBinder;
                    widgetsListTableViewHolderBinder2.bindViewHolder(newViewHolder, selectedAppWidgets, 3, Collections.EMPTY_LIST);
                    newViewHolder.mDataCallback = new q(anonymousClass3, newViewHolder, selectedAppWidgets);
                    linearLayout3 = widgetsTwoPaneSheet.mRightPane;
                    linearLayout3.removeAllViews();
                    linearLayout4 = widgetsTwoPaneSheet.mRightPane;
                    linearLayout4.addView(newViewHolder.itemView);
                    scrollView = widgetsTwoPaneSheet.mRightPaneScrollView;
                    scrollView.setScrollY(0);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onViewRecycled(E0 e02) {
        ((ViewHolderBinder) this.mViewHolderBinders.get(e02.getItemViewType())).unbindViewHolder(e02);
    }

    public final void resetExpandedHeader() {
        if (this.mWidgetsContentVisiblePackageUserKey != null) {
            this.mWidgetsContentVisiblePackageUserKey = null;
            updateVisibleEntries();
        }
    }

    public final void selectFirstHeaderEntry() {
        this.mVisibleEntries.stream().filter(new i()).findFirst().ifPresent(new j(0, this));
    }

    public final void setFilter(Predicate predicate) {
        this.mFilter = predicate;
    }

    public final void setHeaderChangeListener(WidgetsTwoPaneSheet.HeaderChangeListener headerChangeListener) {
        this.mHeaderChangeListener = headerChangeListener;
    }

    public final void setMaxHorizontalSpansPxPerRow(int i4) {
        this.mMaxHorizontalSpan = i4;
        updateVisibleEntries();
    }

    public final void setWidgets(List list) {
        List list2 = this.mAllEntries;
        ((ArrayList) list2).clear();
        ((ArrayList) list2).add(new WidgetListSpaceEntry());
        Stream sorted = list.stream().sorted(this.mRowComparator);
        Objects.requireNonNull(list2);
        sorted.forEach(new j(1, list2));
        updateVisibleEntries();
    }

    public final void setWidgetsOnSearch(List list) {
        this.mWidgetsContentVisiblePackageUserKey = null;
        setWidgets(list);
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onBindViewHolder(E0 e02, int i4, List list) {
        ViewHolderBinder viewHolderBinder = (ViewHolderBinder) this.mViewHolderBinders.get(getItemViewType(i4));
        int i5 = i4 > 1 ? 0 : 1;
        if (i4 == getItemCount() - 1) {
            i5 |= 2;
        }
        viewHolderBinder.bindViewHolder(e02, this.mVisibleEntries.get(i4), i5, list);
    }
}
