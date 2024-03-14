package com.android.launcher3.touch;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.apppairs.AppPairIcon;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.C0482o;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.views.FloatingIconView;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class ItemClickHandler {
    public static final e INSTANCE = new e();

    /* loaded from: classes.dex */
    public interface ItemClickProxy {
        void onItemClicked(View view);
    }

    public static void a(View view) {
        if (view.getWindowToken() == null) {
            return;
        }
        Launcher launcher = Launcher.getLauncher(view.getContext());
        if (launcher.getWorkspace().isFinishedSwitchingState()) {
            Object tag = view.getTag();
            if (tag instanceof WorkspaceItemInfo) {
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) tag;
                if (workspaceItemInfo.isDisabled() && handleDisabledItemClicked(workspaceItemInfo, launcher)) {
                    return;
                }
                if ((view instanceof BubbleTextView) && workspaceItemInfo.hasPromiseIconUi()) {
                    String packageName = workspaceItemInfo.intent.getComponent() != null ? workspaceItemInfo.intent.getComponent().getPackageName() : workspaceItemInfo.intent.getPackage();
                    if (!TextUtils.isEmpty(packageName)) {
                        onClickPendingAppItem(view, launcher, packageName, (workspaceItemInfo.runtimeStatusFlags & 1024) != 0);
                        return;
                    }
                }
                startAppShortcutOrInfoActivity(launcher, workspaceItemInfo, view);
            } else if (tag instanceof FolderInfo) {
                if (!(view instanceof FolderIcon)) {
                    if (view instanceof AppPairIcon) {
                        Launcher launcher2 = Launcher.getLauncher(view.getContext());
                        FolderInfo info = ((AppPairIcon) view).getInfo();
                        launcher2.launchAppPair((WorkspaceItemInfo) info.contents.get(0), (WorkspaceItemInfo) info.contents.get(1));
                        return;
                    }
                    return;
                }
                Folder folder = ((FolderIcon) view).getFolder();
                if (folder.isOpen() || folder.isDestroyed()) {
                    return;
                }
                folder.animateOpen();
                StatsLogManager.newInstance(view.getContext()).logger().withItemInfo(folder.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_OPEN);
            } else if (tag instanceof AppInfo) {
                startAppShortcutOrInfoActivity(launcher, (AppInfo) tag, view);
            } else if (!(tag instanceof LauncherAppWidgetInfo)) {
                if (tag instanceof ItemClickProxy) {
                    ((ItemClickProxy) tag).onItemClicked(view);
                }
            } else if (view instanceof PendingAppWidgetHostView) {
                PendingAppWidgetHostView pendingAppWidgetHostView = (PendingAppWidgetHostView) view;
                if (launcher.getPackageManager().isSafeMode()) {
                    Toast.makeText(launcher, (int) R.string.safemode_widget_error, 0).show();
                    return;
                }
                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) pendingAppWidgetHostView.getTag();
                if (!pendingAppWidgetHostView.isReadyForClickSetup()) {
                    onClickPendingAppItem(pendingAppWidgetHostView, launcher, launcherAppWidgetInfo.providerName.getPackageName(), launcherAppWidgetInfo.installProgress >= 0);
                    return;
                }
                LauncherAppWidgetProviderInfo findProvider = new WidgetManagerHelper(launcher).findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
                if (findProvider == null) {
                    return;
                }
                WidgetAddFlowHandler widgetAddFlowHandler = new WidgetAddFlowHandler(findProvider);
                if (!launcherAppWidgetInfo.hasRestoreFlag(1)) {
                    widgetAddFlowHandler.startConfigActivity(launcher, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo, 13);
                } else if (launcherAppWidgetInfo.hasRestoreFlag(16)) {
                    widgetAddFlowHandler.startBindFlow(launcher, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo, 12);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean handleDisabledItemClicked(com.android.launcher3.model.data.WorkspaceItemInfo r7, android.content.Context r8) {
        /*
            int r0 = r7.runtimeStatusFlags
            r0 = r0 & 4159(0x103f, float:5.828E-42)
            r1 = 0
            r2 = 1
            com.android.launcher3.Launcher r3 = com.android.launcher3.Launcher.getLauncher(r8)     // Catch: java.lang.Exception -> L63
            int r4 = r7.itemType     // Catch: java.lang.Exception -> L63
            r5 = 6
            if (r4 != r5) goto L6b
            int r4 = r7.runtimeStatusFlags     // Catch: java.lang.Exception -> L63
            r4 = r4 & 4096(0x1000, float:5.74E-42)
            if (r4 == 0) goto L17
            r4 = r2
            goto L18
        L17:
            r4 = r1
        L18:
            if (r4 == 0) goto L6b
            java.lang.String r4 = r7.getTargetPackage()     // Catch: java.lang.Exception -> L63
            if (r4 == 0) goto L2a
            com.android.launcher3.util.PackageManagerHelper r5 = new com.android.launcher3.util.PackageManagerHelper     // Catch: java.lang.Exception -> L63
            r5.<init>(r8)     // Catch: java.lang.Exception -> L63
            android.content.Intent r4 = r5.getMarketIntent(r4)     // Catch: java.lang.Exception -> L63
            goto L2b
        L2a:
            r4 = 0
        L2b:
            if (r4 != 0) goto L2e
            goto L6b
        L2e:
            android.app.AlertDialog$Builder r5 = new android.app.AlertDialog$Builder     // Catch: java.lang.Exception -> L63
            r5.<init>(r8)     // Catch: java.lang.Exception -> L63
            r6 = 2131951784(0x7f1300a8, float:1.9539992E38)
            android.app.AlertDialog$Builder r5 = r5.setTitle(r6)     // Catch: java.lang.Exception -> L63
            r6 = 2131951783(0x7f1300a7, float:1.953999E38)
            android.app.AlertDialog$Builder r5 = r5.setMessage(r6)     // Catch: java.lang.Exception -> L63
            com.android.launcher3.touch.h r6 = new com.android.launcher3.touch.h     // Catch: java.lang.Exception -> L63
            r6.<init>(r2, r8, r4)     // Catch: java.lang.Exception -> L63
            r4 = 2131951782(0x7f1300a6, float:1.9539988E38)
            android.app.AlertDialog$Builder r4 = r5.setPositiveButton(r4, r6)     // Catch: java.lang.Exception -> L63
            com.android.launcher3.touch.h r5 = new com.android.launcher3.touch.h     // Catch: java.lang.Exception -> L63
            r6 = 2
            r5.<init>(r6, r3, r7)     // Catch: java.lang.Exception -> L63
            r3 = 2131951781(0x7f1300a5, float:1.9539986E38)
            android.app.AlertDialog$Builder r3 = r4.setNeutralButton(r3, r5)     // Catch: java.lang.Exception -> L63
            android.app.AlertDialog r3 = r3.create()     // Catch: java.lang.Exception -> L63
            r3.show()     // Catch: java.lang.Exception -> L63
            r3 = r2
            goto L6c
        L63:
            r3 = move-exception
            java.lang.String r4 = "ItemClickHandler"
            java.lang.String r5 = "Error creating alert dialog"
            android.util.Log.e(r4, r5, r3)
        L6b:
            r3 = r1
        L6c:
            if (r3 == 0) goto L6f
            return r2
        L6f:
            r0 = r0 & (-5)
            r0 = r0 & (-9)
            if (r0 != 0) goto L76
            return r1
        L76:
            java.lang.CharSequence r0 = r7.disabledMessage
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L88
            java.lang.CharSequence r7 = r7.disabledMessage
            android.widget.Toast r7 = android.widget.Toast.makeText(r8, r7, r1)
            r7.show()
            return r2
        L88:
            int r7 = r7.runtimeStatusFlags
            r0 = r7 & 1
            if (r0 == 0) goto L92
            r7 = 2131952039(0x7f1301a7, float:1.954051E38)
            goto La2
        L92:
            r0 = r7 & 16
            if (r0 != 0) goto L9f
            r7 = r7 & 32
            if (r7 == 0) goto L9b
            goto L9f
        L9b:
            r7 = 2131951682(0x7f130042, float:1.9539785E38)
            goto La2
        L9f:
            r7 = 2131952121(0x7f1301f9, float:1.9540676E38)
        La2:
            android.widget.Toast r7 = android.widget.Toast.makeText(r8, r7, r1)
            r7.show()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.touch.ItemClickHandler.handleDisabledItemClicked(com.android.launcher3.model.data.WorkspaceItemInfo, android.content.Context):boolean");
    }

    private static void onClickPendingAppItem(final View view, final Launcher launcher, final String str, boolean z4) {
        final ItemInfo itemInfo = (ItemInfo) view.getTag();
        CompletableFuture supplyAsync = Utilities.ATLEAST_Q ? CompletableFuture.supplyAsync(new Supplier() { // from class: com.android.launcher3.touch.f
            @Override // java.util.function.Supplier
            public final Object get() {
                Launcher launcher2 = Launcher.this;
                ItemInfo itemInfo2 = itemInfo;
                return ((InstallSessionHelper) InstallSessionHelper.INSTANCE.get(launcher2)).getActiveSessionInfo(str, itemInfo2.user);
            }
        }, Executors.UI_HELPER_EXECUTOR) : CompletableFuture.completedFuture(null);
        Consumer consumer = new Consumer() { // from class: com.android.launcher3.touch.g
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Launcher launcher2 = Launcher.this;
                View view2 = view;
                ItemInfo itemInfo2 = itemInfo;
                String str2 = str;
                PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) obj;
                if (sessionInfo != null && Utilities.ATLEAST_Q) {
                    try {
                        ((LauncherApps) launcher2.getSystemService(LauncherApps.class)).startPackageInstallerSessionDetailsActivity(sessionInfo, null, launcher2.getActivityLaunchOptions(view2, itemInfo2).toBundle());
                        return;
                    } catch (Exception e4) {
                        Log.e("ItemClickHandler", "Unable to launch market intent for package=" + str2, e4);
                    }
                }
                launcher2.startActivitySafely(view2, new PackageManagerHelper(launcher2).getMarketIntent(str2), itemInfo2);
            }
        };
        if (z4) {
            supplyAsync.thenAcceptAsync(consumer, (Executor) Executors.MAIN_EXECUTOR);
        } else {
            new AlertDialog.Builder(launcher).setTitle(R.string.abandoned_promises_title).setMessage(R.string.abandoned_promise_explanation).setPositiveButton(R.string.abandoned_search, new h(0, supplyAsync, consumer)).setNeutralButton(R.string.abandoned_clean_this, new DialogInterface.OnClickListener() { // from class: com.android.launcher3.touch.i
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    Launcher launcher2 = Launcher.this;
                    String str2 = str;
                    ItemInfo itemInfo2 = itemInfo;
                    Workspace workspace = launcher2.getWorkspace();
                    Set singleton = Collections.singleton(str2);
                    UserHandle userHandle = itemInfo2.user;
                    int i5 = ItemInfoMatcher.f5271a;
                    workspace.persistRemoveItemsByMatcher(new C0482o(userHandle, singleton, 1), "user explicitly removes the promise app icon");
                }
            }).create().show();
        }
    }

    private static void startAppShortcutOrInfoActivity(Launcher launcher, ItemInfoWithIcon itemInfoWithIcon, View view) {
        TestLogging.recordEvent("Main", "start: startAppShortcutOrInfoActivity");
        Intent intent = (!(itemInfoWithIcon instanceof ItemInfoWithIcon) || (itemInfoWithIcon.runtimeStatusFlags & 1024) == 0) ? itemInfoWithIcon.getIntent() : new PackageManagerHelper(launcher).getMarketIntent(itemInfoWithIcon.getTargetComponent().getPackageName());
        if (intent == null) {
            throw new IllegalArgumentException("Input must have a valid intent");
        }
        if (itemInfoWithIcon instanceof WorkspaceItemInfo) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfoWithIcon;
            if (workspaceItemInfo.hasStatusFlag(8) && "android.intent.action.VIEW".equals(intent.getAction())) {
                Intent intent2 = new Intent(intent);
                intent2.setPackage(null);
                intent = intent2;
            }
            if ((workspaceItemInfo.options & 16) != 0) {
                launcher.startActivityForResult(itemInfoWithIcon.getIntent(), 0);
                launcher.logAppLaunch(launcher.getStatsLogManager(), itemInfoWithIcon, new InstanceIdSequence().newInstanceId());
                return;
            }
        }
        if (view != null && launcher.supportsAdaptiveIconAnimation() && !itemInfoWithIcon.shouldUseBackgroundAnimation()) {
            FloatingIconView.fetchIcon(launcher, view, itemInfoWithIcon, true);
        }
        launcher.startActivitySafely(view, intent, itemInfoWithIcon);
    }
}
