package androidx.profileinstaller;

import Y.a;
import Y.c;
import Y.e;
import Y.f;
import Y.h;
import Y.k;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    /* JADX WARN: Type inference failed for: r12v11, types: [java.util.concurrent.Executor, Y.d] */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            ?? r12 = new Executor() { // from class: Y.d
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    switch (r1) {
                        case 0:
                            runnable.run();
                            return;
                        case 1:
                            runnable.run();
                            return;
                        default:
                            runnable.run();
                            return;
                    }
                }
            };
            e eVar = new e(this);
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
            AssetManager assets = applicationContext.getAssets();
            String name = new File(applicationInfo.sourceDir).getName();
            try {
                context.getPackageManager().getPackageInfo(packageName, 0);
                context.getFilesDir();
                Log.d("ProfileInstaller", "Installing profile for " + context.getPackageName());
                int i4 = Build.VERSION.SDK_INT;
                final c cVar = new c(assets, r12, eVar, name, new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof"));
                final Integer valueOf = Integer.valueOf(i4);
                r12.execute(new Runnable() { // from class: Y.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        c cVar2 = c.this;
                        cVar2.f2260b.a(r2, valueOf);
                    }
                });
                k.b(context);
                return;
            } catch (PackageManager.NameNotFoundException e4) {
                eVar.a(7, e4);
                k.b(context);
                return;
            }
        }
        boolean equals = "androidx.profileinstaller.action.SKIP_FILE".equals(action);
        f fVar = h.f2263a;
        if (!equals) {
            if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
                Process.sendSignal(Process.myPid(), 10);
                fVar.a(12, null);
                setResultCode(12);
                return;
            } else if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
                return;
            } else {
                if (!"DROP_SHADER_CACHE".equals(extras.getString("EXTRA_BENCHMARK_OPERATION"))) {
                    fVar.a(16, null);
                    setResultCode(16);
                    return;
                } else if (a.a(context.createDeviceProtectedStorageContext().getCodeCacheDir())) {
                    fVar.a(14, null);
                    setResultCode(14);
                    return;
                } else {
                    fVar.a(15, null);
                    setResultCode(15);
                    return;
                }
            }
        }
        Bundle extras2 = intent.getExtras();
        if (extras2 != null) {
            String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
            if (!"WRITE_SKIP_FILE".equals(string)) {
                if ("DELETE_SKIP_FILE".equals(string)) {
                    new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                    fVar.a(11, null);
                    setResultCode(11);
                    return;
                }
                return;
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0);
                try {
                    DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
                    dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                    dataOutputStream.close();
                } catch (IOException unused) {
                }
                fVar.a(10, null);
                setResultCode(10);
            } catch (PackageManager.NameNotFoundException e5) {
                fVar.a(7, e5);
                setResultCode(7);
            }
        }
    }
}
