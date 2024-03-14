package com.android.launcher3.allapps;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.Z;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.search.SearchAdapterProvider;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import j.C1080K;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class BaseAllAppsAdapter extends Z {
    protected final Context mActivityContext;
    protected final SearchAdapterProvider mAdapterProvider;
    protected final AlphabeticalAppsList mApps;
    protected int mAppsPerRow;
    private final int mExtraTextHeight;
    protected View.OnFocusChangeListener mIconFocusListener;
    protected final LayoutInflater mLayoutInflater;
    protected final View.OnClickListener mOnIconClickListener;
    protected final View.OnLongClickListener mOnIconLongClickListener;

    /* loaded from: classes.dex */
    public class AdapterItem {
        public AppInfo itemInfo = null;
        public int rowAppIndex;
        public final int viewType;

        public AdapterItem(int i4) {
            this.viewType = i4;
        }

        public boolean isContentSame(AdapterItem adapterItem) {
            return this.itemInfo == null && adapterItem.itemInfo == null;
        }

        public boolean isCountedForAccessibility() {
            return this.viewType == 2;
        }

        public boolean isSameAs(AdapterItem adapterItem) {
            return adapterItem.viewType == this.viewType && adapterItem.getClass() == getClass();
        }

        public void setDecorationFillAlpha(int i4) {
        }
    }

    /* loaded from: classes.dex */
    public final class ViewHolder extends E0 {
    }

    public BaseAllAppsAdapter(Context context, LayoutInflater layoutInflater, AlphabeticalAppsList alphabeticalAppsList, SearchAdapterProvider searchAdapterProvider) {
        this.mActivityContext = context;
        this.mApps = alphabeticalAppsList;
        this.mLayoutInflater = layoutInflater;
        this.mOnIconClickListener = ((ActivityContext) context).getItemOnClickListener();
        this.mOnIconLongClickListener = ((ActivityContext) context).getAllAppsItemLongClickListener();
        this.mAdapterProvider = searchAdapterProvider;
        this.mExtraTextHeight = Utilities.calculateTextHeight(((ActivityContext) context).getDeviceProfile().allAppsIconTextSizePx);
    }

    public static boolean isViewType(int i4, int i5) {
        return (i4 & i5) != 0;
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemCount() {
        return ((ArrayList) this.mApps.getAdapterItems()).size();
    }

    @Override // androidx.recyclerview.widget.Z
    public final int getItemViewType(int i4) {
        return ((AdapterItem) ((ArrayList) this.mApps.getAdapterItems()).get(i4)).viewType;
    }

    @Override // androidx.recyclerview.widget.Z
    public final void onBindViewHolder(E0 e02, int i4) {
        ViewHolder viewHolder = (ViewHolder) e02;
        int itemViewType = viewHolder.getItemViewType();
        AlphabeticalAppsList alphabeticalAppsList = this.mApps;
        View view = viewHolder.itemView;
        if (itemViewType == 2) {
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            bubbleTextView.reset();
            bubbleTextView.applyFromApplicationInfo(((AdapterItem) ((ArrayList) alphabeticalAppsList.getAdapterItems()).get(i4)).itemInfo);
        } else if (itemViewType == 4) {
            AppInfo appInfo = ((AdapterItem) ((ArrayList) alphabeticalAppsList.getAdapterItems()).get(i4)).itemInfo;
            if (appInfo != null) {
                ((TextView) view).setText(this.mActivityContext.getString(R.string.all_apps_no_search_results, appInfo.title));
            }
        } else if (itemViewType != 8) {
            if (itemViewType == 16) {
                ((WorkEduCard) view).setPosition(i4);
            } else if (itemViewType != 32) {
                int itemViewType2 = viewHolder.getItemViewType();
                SearchAdapterProvider searchAdapterProvider = this.mAdapterProvider;
                if (searchAdapterProvider.isViewSupported(itemViewType2)) {
                    searchAdapterProvider.onBindView(viewHolder, i4);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.Z
    public final E0 onCreateViewHolder(RecyclerView recyclerView, int i4) {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        if (i4 == 2) {
            FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_TWOLINE_ALLAPPS;
            BubbleTextView bubbleTextView = (BubbleTextView) layoutInflater.inflate(!booleanFlag.get() ? R.layout.all_apps_icon : R.layout.all_apps_icon_twoline, (ViewGroup) recyclerView, false);
            bubbleTextView.setLongPressTimeoutFactor();
            bubbleTextView.setOnFocusChangeListener(this.mIconFocusListener);
            bubbleTextView.setOnClickListener(this.mOnIconClickListener);
            bubbleTextView.setOnLongClickListener(this.mOnIconLongClickListener);
            bubbleTextView.getLayoutParams().height = ((ActivityContext) this.mActivityContext).getDeviceProfile().allAppsCellHeightPx;
            if (booleanFlag.get()) {
                bubbleTextView.getLayoutParams().height += this.mExtraTextHeight;
            }
            return new ViewHolder(bubbleTextView);
        } else if (i4 != 4) {
            if (i4 != 8) {
                if (i4 != 16) {
                    if (i4 != 32) {
                        SearchAdapterProvider searchAdapterProvider = this.mAdapterProvider;
                        if (searchAdapterProvider.isViewSupported(i4)) {
                            return searchAdapterProvider.onCreateViewHolder(i4, layoutInflater, recyclerView);
                        }
                        throw new RuntimeException(C1080K.a("Unexpected view type", i4));
                    }
                    return new ViewHolder(layoutInflater.inflate(R.layout.work_apps_paused, (ViewGroup) recyclerView, false));
                }
                return new ViewHolder(layoutInflater.inflate(R.layout.work_apps_edu, (ViewGroup) recyclerView, false));
            }
            return new ViewHolder(layoutInflater.inflate(R.layout.all_apps_divider, (ViewGroup) recyclerView, false));
        } else {
            return new ViewHolder(layoutInflater.inflate(R.layout.all_apps_empty_search, (ViewGroup) recyclerView, false));
        }
    }

    @Override // androidx.recyclerview.widget.Z
    public final /* bridge */ /* synthetic */ boolean onFailedToRecycleView(E0 e02) {
        ViewHolder viewHolder = (ViewHolder) e02;
        return true;
    }
}
