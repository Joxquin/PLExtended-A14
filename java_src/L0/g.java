package L0;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.GridBackupTable;
import com.android.launcher3.model.ModelDbController;
import com.android.launcher3.provider.LauncherDbUtils;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1029d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Context f1030e;

    public /* synthetic */ g(int i4, Launcher launcher) {
        this.f1029d = i4;
        this.f1030e = launcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1029d) {
            case 0:
                Context context = this.f1030e;
                LauncherModel model = LauncherAppState.getInstance(context).getModel();
                LauncherDbUtils.SQLiteTransaction newTransaction = model.getModelDbController().newTransaction();
                try {
                    if (LauncherDbUtils.tableExists(newTransaction.getDb(), "hotseat_restore_backup")) {
                        new GridBackupTable(context, newTransaction.getDb()).restoreFromCustomBackupTable();
                        newTransaction.commit();
                        model.forceReload();
                    }
                    newTransaction.close();
                    return;
                } catch (Throwable th) {
                    try {
                        newTransaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            default:
                Context context2 = this.f1030e;
                ModelDbController modelDbController = LauncherAppState.getInstance(context2).getModel().getModelDbController();
                LauncherDbUtils.SQLiteTransaction newTransaction2 = modelDbController.newTransaction();
                try {
                    new GridBackupTable(context2, newTransaction2.getDb()).createCustomBackupTable();
                    newTransaction2.commit();
                    modelDbController.refreshHotseatRestoreTable();
                    newTransaction2.close();
                    return;
                } catch (Throwable th3) {
                    try {
                        newTransaction2.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
        }
    }
}
