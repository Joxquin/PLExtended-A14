package com.android.launcher3.proxy;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import com.android.launcher3.util.StartActivityParams;
/* loaded from: classes.dex */
public class ProxyActivityStarter extends Activity {
    private StartActivityParams mParams;

    public static Intent getLaunchIntent(Context context, StartActivityParams startActivityParams) {
        return new Intent(context, ProxyActivityStarter.class).putExtra("start-activity-params", startActivityParams).addFlags(270565376);
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i4, int i5, Intent intent) {
        StartActivityParams startActivityParams = this.mParams;
        if (i4 == startActivityParams.requestCode) {
            startActivityParams.deliverResult(this, i5, intent);
        }
        finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        Intent intent;
        super.onCreate(bundle);
        setVisible(false);
        StartActivityParams startActivityParams = (StartActivityParams) getIntent().getParcelableExtra("start-activity-params");
        this.mParams = startActivityParams;
        if (startActivityParams == null) {
            Log.d("ProxyActivityStarter", "Proxy activity started without params");
            finishAndRemoveTask();
        } else if (bundle != null) {
        } else {
            try {
                intent = startActivityParams.intent;
            } catch (ActivityNotFoundException | IntentSender.SendIntentException | NullPointerException | SecurityException unused) {
                this.mParams.deliverResult(this, 0, null);
            }
            if (intent != null) {
                startActivityForResult(intent, startActivityParams.requestCode, startActivityParams.options);
                return;
            }
            IntentSender intentSender = startActivityParams.intentSender;
            if (intentSender != null) {
                startIntentSenderForResult(intentSender, startActivityParams.requestCode, startActivityParams.fillInIntent, startActivityParams.flagsMask, startActivityParams.flagsValues, startActivityParams.extraFlags, startActivityParams.options);
                return;
            }
            finishAndRemoveTask();
        }
    }
}
