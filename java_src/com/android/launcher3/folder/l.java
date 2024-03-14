package com.android.launcher3.folder;

import com.android.launcher3.DropTarget;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4614d = 0;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FolderIcon f4615e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ FolderNameInfos f4616f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ DropTarget.DragObject f4617g;

    public /* synthetic */ l(FolderIcon folderIcon, DropTarget.DragObject dragObject, FolderNameInfos folderNameInfos) {
        this.f4615e = folderIcon;
        this.f4617g = dragObject;
        this.f4616f = folderNameInfos;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4614d) {
            case 0:
                FolderIcon folderIcon = this.f4615e;
                DropTarget.DragObject dragObject = this.f4617g;
                FolderNameInfos folderNameInfos = this.f4616f;
                int i4 = FolderIcon.f4594d;
                folderIcon.getClass();
                dragObject.folderNameProvider.getSuggestedFolderName(folderIcon.getContext(), folderIcon.mInfo.contents, folderNameInfos);
                folderIcon.postDelayed(new l(folderIcon, folderNameInfos, dragObject), 400L);
                return;
            default:
                FolderIcon folderIcon2 = this.f4615e;
                FolderNameInfos folderNameInfos2 = this.f4616f;
                DropTarget.DragObject dragObject2 = this.f4617g;
                int i5 = FolderIcon.f4594d;
                folderIcon2.getClass();
                InstanceId instanceId = dragObject2.logInstanceId;
                if (folderIcon2.mInfo.getLabelState().equals(FolderInfo.LabelState.UNLABELED)) {
                    if (folderNameInfos2 == null || !folderNameInfos2.hasSuggestions()) {
                        StatsLogManager.newInstance(folderIcon2.getContext()).logger().withInstanceId(instanceId).withItemInfo(folderIcon2.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS);
                    } else if (folderNameInfos2.hasPrimary()) {
                        CharSequence charSequence = folderNameInfos2.getLabels()[0];
                        LauncherAtom$FromState fromLabelState = folderIcon2.mInfo.getFromLabelState();
                        folderIcon2.mInfo.setTitle(charSequence, folderIcon2.mFolder.mLauncherDelegate.getModelWriter());
                        CharSequence charSequence2 = folderIcon2.mInfo.title;
                        folderIcon2.mFolderName.setText(charSequence2);
                        folderIcon2.setContentDescription(folderIcon2.getAccessiblityTitle(charSequence2));
                        folderIcon2.mFolder.mFolderName.setText(folderIcon2.mInfo.title);
                        StatsLogManager.newInstance(folderIcon2.getContext()).logger().withInstanceId(instanceId).withItemInfo(folderIcon2.mInfo).withFromState(fromLabelState).withToState(LauncherAtom$ToState.TO_SUGGESTION0).withEditText(charSequence.toString()).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELED);
                    } else {
                        StatsLogManager.newInstance(folderIcon2.getContext()).logger().withInstanceId(instanceId).withItemInfo(folderIcon2.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY);
                    }
                }
                folderIcon2.invalidate();
                return;
        }
    }

    public /* synthetic */ l(FolderIcon folderIcon, FolderNameInfos folderNameInfos, DropTarget.DragObject dragObject) {
        this.f4615e = folderIcon;
        this.f4616f = folderNameInfos;
        this.f4617g = dragObject;
    }
}
