package com.android.launcher3.folder;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class FolderNameProvider implements ResourceBasedOverride {
    protected List mAppInfos;
    protected IntSparseArrayMap mFolderInfos;

    /* loaded from: classes.dex */
    final class FolderNameWorker extends BaseModelUpdateTask {
        public FolderNameWorker() {
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
            FolderNameProvider.this.mFolderInfos = bgDataModel.folders.clone();
            FolderNameProvider folderNameProvider = FolderNameProvider.this;
            AppInfo[] appInfoArr = (AppInfo[]) allAppsList.data.toArray(AppInfo.EMPTY_ARRAY);
            Arrays.sort(appInfoArr, AppInfo.COMPONENT_KEY_COMPARATOR);
            folderNameProvider.mAppInfos = Arrays.asList(appInfoArr);
        }
    }

    public static FolderNameProvider newInstance(Context context) {
        FolderNameProvider folderNameProvider = (FolderNameProvider) ResourceBasedOverride.Overrides.getObject(R.string.folder_name_provider_class, context.getApplicationContext(), FolderNameProvider.class);
        folderNameProvider.getClass();
        LauncherAppState.getInstance(context).getModel().enqueueModelUpdateTask(new FolderNameWorker());
        return folderNameProvider;
    }

    public void getSuggestedFolderName(final Context context, ArrayList arrayList, final FolderNameInfos folderNameInfos) {
        Set set = (Set) arrayList.stream().map(new Function() { // from class: com.android.launcher3.folder.p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WorkspaceItemInfo) obj).user;
                    case 1:
                        return ((WorkspaceItemInfo) obj).getTargetComponent();
                    default:
                        return ((ComponentName) obj).getPackageName();
                }
            }
        }).collect(Collectors.toSet());
        if (set.size() == 1 && !set.contains(Process.myUserHandle())) {
            String string = !Utilities.ATLEAST_T ? context.getString(R.string.work_folder_name) : ((DevicePolicyManager) context.getSystemService(DevicePolicyManager.class)).getResources().getString("Launcher.WORK_FOLDER_NAME", new Supplier() { // from class: com.android.launcher3.folder.t
                @Override // java.util.function.Supplier
                public final Object get() {
                    return context.getString(R.string.work_folder_name);
                }
            });
            if (folderNameInfos != null && !folderNameInfos.contains(string)) {
                folderNameInfos.setStatus(2);
                folderNameInfos.setStatus(4);
                CharSequence[] labels = folderNameInfos.getLabels();
                for (int i4 = 0; i4 < labels.length; i4++) {
                    CharSequence charSequence = labels[i4];
                    if (charSequence == null || TextUtils.isEmpty(charSequence)) {
                        folderNameInfos.setLabel(i4, string, Float.valueOf(1.0f));
                        break;
                    }
                }
                folderNameInfos.setLabel(labels.length - 1, string, Float.valueOf(1.0f));
            }
        }
        Set set2 = (Set) arrayList.stream().map(new Function() { // from class: com.android.launcher3.folder.p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WorkspaceItemInfo) obj).user;
                    case 1:
                        return ((WorkspaceItemInfo) obj).getTargetComponent();
                    default:
                        return ((ComponentName) obj).getPackageName();
                }
            }
        }).filter(new Predicate() { // from class: com.android.launcher3.folder.q
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return Objects.nonNull((ComponentName) obj);
                    default:
                        return ((AppInfo) obj).componentName != null;
                }
            }
        }).map(new Function() { // from class: com.android.launcher3.folder.p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WorkspaceItemInfo) obj).user;
                    case 1:
                        return ((WorkspaceItemInfo) obj).getTargetComponent();
                    default:
                        return ((ComponentName) obj).getPackageName();
                }
            }
        }).collect(Collectors.toSet());
        if (set2.size() == 1) {
            final String str = (String) set2.iterator().next();
            List list = this.mAppInfos;
            ((list == null || list.isEmpty()) ? Optional.empty() : this.mAppInfos.stream().filter(new Predicate() { // from class: com.android.launcher3.folder.q
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    switch (r1) {
                        case 0:
                            return Objects.nonNull((ComponentName) obj);
                        default:
                            return ((AppInfo) obj).componentName != null;
                    }
                }
            }).filter(new Predicate() { // from class: com.android.launcher3.folder.s
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((AppInfo) obj).componentName.getPackageName().equals(str);
                }
            }).findAny()).ifPresent(new Consumer() { // from class: com.android.launcher3.folder.r
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    FolderNameProvider folderNameProvider = FolderNameProvider.this;
                    FolderNameInfos folderNameInfos2 = folderNameInfos;
                    folderNameProvider.getClass();
                    CharSequence charSequence2 = ((AppInfo) obj).title;
                    String charSequence3 = charSequence2 == null ? "" : charSequence2.toString();
                    if (folderNameInfos2 == null || folderNameInfos2.contains(charSequence3)) {
                        return;
                    }
                    folderNameInfos2.setStatus(2);
                    folderNameInfos2.setStatus(4);
                    CharSequence[] labels2 = folderNameInfos2.getLabels();
                    Float[] scores = folderNameInfos2.getScores();
                    int length = labels2.length - 1;
                    while (length > 0) {
                        int i5 = length - 1;
                        CharSequence charSequence4 = labels2[i5];
                        if (charSequence4 != null && !TextUtils.isEmpty(charSequence4)) {
                            folderNameInfos2.setLabel(length, labels2[i5], scores[i5]);
                        }
                        length = i5;
                    }
                    folderNameInfos2.setLabel(0, charSequence3, Float.valueOf(1.0f));
                }
            });
        }
    }

    public static FolderNameProvider newInstance(Context context, List list, IntSparseArrayMap intSparseArrayMap) {
        FolderNameProvider folderNameProvider = (FolderNameProvider) ResourceBasedOverride.Overrides.getObject(R.string.folder_name_provider_class, context.getApplicationContext(), FolderNameProvider.class);
        folderNameProvider.mAppInfos = list;
        folderNameProvider.mFolderInfos = intSparseArrayMap;
        return folderNameProvider;
    }
}
