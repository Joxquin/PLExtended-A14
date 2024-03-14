package com.android.launcher3.allapps;

import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.O;
import com.android.launcher3.allapps.AlphabeticalAppsList;
/* loaded from: classes.dex */
public final class AllAppsFastScrollHelper {
    private E0 mLastSelectedViewHolder;
    private AllAppsRecyclerView mRv;
    private int mTargetFastScrollPosition = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class MyScroller extends O {
        private final int mTargetPosition;

        public MyScroller(int i4) {
            super(AllAppsFastScrollHelper.this.mRv.getContext());
            this.mTargetPosition = i4;
            g(i4);
        }

        @Override // androidx.recyclerview.widget.O
        public final int getVerticalSnapPreference() {
            return -1;
        }

        @Override // androidx.recyclerview.widget.O
        public final void onStart() {
            AllAppsFastScrollHelper allAppsFastScrollHelper = AllAppsFastScrollHelper.this;
            if (this.mTargetPosition != allAppsFastScrollHelper.mTargetFastScrollPosition) {
                AllAppsFastScrollHelper.e(allAppsFastScrollHelper, false);
                allAppsFastScrollHelper.mLastSelectedViewHolder = null;
            }
        }

        @Override // androidx.recyclerview.widget.O
        public final void onStop() {
            E0 findViewHolderForAdapterPosition;
            super.onStop();
            AllAppsFastScrollHelper allAppsFastScrollHelper = AllAppsFastScrollHelper.this;
            int i4 = allAppsFastScrollHelper.mTargetFastScrollPosition;
            int i5 = this.mTargetPosition;
            if (i5 == i4 && (findViewHolderForAdapterPosition = allAppsFastScrollHelper.mRv.findViewHolderForAdapterPosition(i5)) != allAppsFastScrollHelper.mLastSelectedViewHolder) {
                AllAppsFastScrollHelper.e(allAppsFastScrollHelper, false);
                allAppsFastScrollHelper.mLastSelectedViewHolder = findViewHolderForAdapterPosition;
                AllAppsFastScrollHelper.e(allAppsFastScrollHelper, true);
            }
        }
    }

    public AllAppsFastScrollHelper(AllAppsRecyclerView allAppsRecyclerView) {
        this.mRv = allAppsRecyclerView;
    }

    public static void e(AllAppsFastScrollHelper allAppsFastScrollHelper, boolean z4) {
        E0 e02 = allAppsFastScrollHelper.mLastSelectedViewHolder;
        if (e02 != null) {
            e02.itemView.setActivated(z4);
            allAppsFastScrollHelper.mLastSelectedViewHolder.setIsRecyclable(!z4);
        }
    }

    public final void onFastScrollCompleted() {
        this.mTargetFastScrollPosition = -1;
        E0 e02 = this.mLastSelectedViewHolder;
        if (e02 != null) {
            e02.itemView.setActivated(false);
            this.mLastSelectedViewHolder.setIsRecyclable(true);
        }
        this.mLastSelectedViewHolder = null;
    }

    public final void smoothScrollToSection(AlphabeticalAppsList.FastScrollSectionInfo fastScrollSectionInfo) {
        int i4 = this.mTargetFastScrollPosition;
        int i5 = fastScrollSectionInfo.position;
        if (i4 == i5) {
            return;
        }
        this.mTargetFastScrollPosition = i5;
        this.mRv.getLayoutManager().startSmoothScroll(new MyScroller(this.mTargetFastScrollPosition));
    }
}
