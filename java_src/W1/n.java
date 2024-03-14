package W1;

import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$TaskSwitcherContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.StatsLogManager;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
/* loaded from: classes.dex */
public final class n {
    public static void a(NexusLauncherActivity nexusLauncherActivity, NexusLauncherEvent nexusLauncherEvent) {
        StatsLogManager statsLogManager = nexusLauncherActivity.getStatsLogManager();
        Workspace workspace = nexusLauncherActivity.getWorkspace();
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        int i4 = ((LauncherState) nexusLauncherActivity.getStateManager().getState()).statsLogOrdinal;
        int i5 = 2;
        if (i4 != 2) {
            int i6 = 3;
            if (i4 != 3) {
                i6 = 4;
                if (i4 == 4) {
                    newBuilder.setAllAppsContainer(LauncherAtom$AllAppsContainer.getDefaultInstance());
                }
            } else {
                newBuilder.setTaskSwitcherContainer(LauncherAtom$TaskSwitcherContainer.getDefaultInstance());
            }
            i5 = i6;
        } else {
            LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder2.setPageIndex$1(workspace.getCurrentPage());
            newBuilder.setWorkspace(newBuilder2);
        }
        statsLogManager.logger().withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).withSrcState(i5).withDstState(1).log(nexusLauncherEvent);
    }
}
