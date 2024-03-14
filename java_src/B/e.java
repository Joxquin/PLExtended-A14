package B;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.core.view.InterfaceC0168e;
import androidx.core.view.J;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.C0252s;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ReportFragment;
import java.util.WeakHashMap;
import q.m;
/* loaded from: classes.dex */
public class e extends Activity implements InterfaceC0251q, InterfaceC0168e {
    private m mExtraDataMap = new m();
    private C0252s mLifecycleRegistry = new C0252s(this);

    private static boolean shouldSkipDump(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            String str = strArr[0];
            str.getClass();
            char c4 = 65535;
            switch (str.hashCode()) {
                case -645125871:
                    if (str.equals("--translation")) {
                        c4 = 0;
                        break;
                    }
                    break;
                case 100470631:
                    if (str.equals("--dump-dumpable")) {
                        c4 = 1;
                        break;
                    }
                    break;
                case 472614934:
                    if (str.equals("--list-dumpables")) {
                        c4 = 2;
                        break;
                    }
                    break;
                case 1159329357:
                    if (str.equals("--contentcapture")) {
                        c4 = 3;
                        break;
                    }
                    break;
                case 1455016274:
                    if (str.equals("--autofill")) {
                        c4 = 4;
                        break;
                    }
                    break;
            }
            switch (c4) {
                case 0:
                    return true;
                case 1:
                case 2:
                    int i4 = I.b.f550a;
                    return true;
                case 3:
                case 4:
                    return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = J.f3079a;
        }
        return superDispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (getWindow().getDecorView() != null) {
            WeakHashMap weakHashMap = J.f3079a;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Deprecated
    public d getExtraData(Class cls) {
        return (d) this.mExtraDataMap.get(cls);
    }

    @Override // androidx.lifecycle.InterfaceC0251q
    public AbstractC0247m getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ReportFragment.a(this);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        finish();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C0252s c0252s = this.mLifecycleRegistry;
        Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
        c0252s.getClass();
        c0252s.e("markState");
        c0252s.h(lifecycle$State);
        super.onSaveInstanceState(bundle);
    }

    @Deprecated
    public void putExtraData(d dVar) {
        this.mExtraDataMap.put(dVar.getClass(), dVar);
    }

    public final boolean shouldDumpInternalState(String[] strArr) {
        return !shouldSkipDump(strArr);
    }

    @Override // androidx.core.view.InterfaceC0168e
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
