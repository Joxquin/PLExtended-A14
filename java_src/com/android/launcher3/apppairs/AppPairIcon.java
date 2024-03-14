package com.android.launcher3.apppairs;

import F0.a;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes.dex */
public class AppPairIcon extends FrameLayout implements DraggableView {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4569d = 0;
    private ActivityContext mActivity;
    private BubbleTextView mAppPairName;
    private FolderInfo mInfo;

    public AppPairIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static AppPairIcon inflateIcon(ActivityContext activityContext, ViewGroup viewGroup, FolderInfo folderInfo) {
        AppPairIcon appPairIcon = (AppPairIcon) (viewGroup != null ? LayoutInflater.from(viewGroup.getContext()) : activityContext.getLayoutInflater()).inflate(R.layout.app_pair_icon, viewGroup, false);
        Collections.sort(folderInfo.contents, Comparator.comparingInt(new a()));
        appPairIcon.setClipToPadding(false);
        appPairIcon.mAppPairName = (BubbleTextView) appPairIcon.findViewById(R.id.app_pair_icon_name);
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.newIcon(0, appPairIcon.getContext());
        appPairIcon.mAppPairName.applyFromWorkspaceItem(0, workspaceItemInfo, false);
        appPairIcon.mAppPairName.setText(folderInfo.title);
        appPairIcon.setTag(folderInfo);
        appPairIcon.setOnClickListener(activityContext.getItemOnClickListener());
        appPairIcon.mInfo = folderInfo;
        appPairIcon.mActivity = activityContext;
        appPairIcon.setAccessibilityDelegate(activityContext.getAccessibilityDelegate());
        return appPairIcon;
    }

    public final FolderInfo getInfo() {
        return this.mInfo;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final int getViewType() {
        return 0;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final void getWorkspaceVisualDragBounds(Rect rect) {
        this.mAppPairName.getIconBounds(rect);
    }

    public AppPairIcon(Context context) {
        super(context);
    }
}
