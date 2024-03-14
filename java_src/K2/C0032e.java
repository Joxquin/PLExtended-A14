package K2;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceTargetEvent;
import android.app.smartspace.uitemplatedata.TapAction;
import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.provider.CalendarContract;
import android.util.Log;
import android.view.View;
import com.android.systemui.shared.R;
import com.google.android.systemui.smartspace.BcSmartspaceEvent;
/* renamed from: K2.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0032e {

    /* renamed from: a  reason: collision with root package name */
    public static n1.c f977a;

    public static String a(Bundle bundle) {
        if (bundle.containsKey("imageRatioWidth") && bundle.containsKey("imageRatioHeight")) {
            int i4 = bundle.getInt("imageRatioWidth");
            int i5 = bundle.getInt("imageRatioHeight");
            if (i4 <= 0 || i5 <= 0) {
                return null;
            }
            return i4 + ":" + i5;
        }
        return null;
    }

    public static Drawable b(Context context, Icon icon) {
        return c(icon, context, context.getResources().getDimensionPixelSize(R.dimen.enhanced_smartspace_icon_size));
    }

    public static Drawable c(Icon icon, Context context, int i4) {
        if (icon == null) {
            return null;
        }
        Drawable bitmapDrawable = (icon.getType() == 1 || icon.getType() == 5) ? new BitmapDrawable(context.getResources(), icon.getBitmap()) : icon.loadDrawable(context);
        if (bitmapDrawable != null) {
            bitmapDrawable.setBounds(0, 0, i4, i4);
        }
        return bitmapDrawable;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int d(String str, float f4) {
        boolean z4;
        if (str == null) {
            return 0;
        }
        switch (str.hashCode()) {
            case 3208415:
                if (str.equals("home")) {
                    z4 = false;
                    break;
                }
                z4 = true;
                break;
            case 95848451:
                if (str.equals("dream")) {
                    z4 = true;
                    break;
                }
                z4 = true;
                break;
            case 1792850263:
                if (str.equals("lockscreen")) {
                    z4 = true;
                    break;
                }
                z4 = true;
                break;
            default:
                z4 = true;
                break;
        }
        switch (z4) {
            case false:
                return 1;
            case true:
                return 5;
            case true:
                if (f4 == 1.0f) {
                    return 3;
                }
                return f4 == 0.0f ? 2 : -1;
            default:
                return 0;
        }
    }

    public static Intent e() {
        return new Intent("android.intent.action.VIEW").setData(ContentUris.appendId(CalendarContract.CONTENT_URI.buildUpon().appendPath("time"), System.currentTimeMillis()).build()).addFlags(270532608);
    }

    public static void f(AbstractC0041n abstractC0041n, SmartspaceTarget smartspaceTarget, TapAction tapAction, n1.d dVar, String str, L2.d dVar2) {
        i(abstractC0041n, smartspaceTarget, tapAction, dVar, str, dVar2, 0);
    }

    public static void g(View view, SmartspaceTarget smartspaceTarget, SmartspaceAction smartspaceAction, n1.d dVar, String str, L2.d dVar2) {
        h(view, smartspaceTarget, smartspaceAction, dVar, str, dVar2, 0);
    }

    public static void h(View view, final SmartspaceTarget smartspaceTarget, final SmartspaceAction smartspaceAction, final n1.d dVar, final String str, final L2.d dVar2, final int i4) {
        if (view == null || smartspaceAction == null) {
            Log.e(str, "No tap action can be set up");
            return;
        }
        final boolean z4 = smartspaceAction.getExtras() != null && smartspaceAction.getExtras().getBoolean("show_on_lockscreen");
        final boolean z5 = smartspaceAction.getIntent() == null && smartspaceAction.getPendingIntent() == null;
        n1.c cVar = f977a;
        if (cVar == null) {
            cVar = new C0031d(str);
        }
        final n1.c cVar2 = cVar;
        view.setOnClickListener(new View.OnClickListener() { // from class: K2.c

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ View.OnClickListener f972j = null;

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                L2.d dVar3 = L2.d.this;
                int i5 = i4;
                boolean z6 = z5;
                n1.c cVar3 = cVar2;
                SmartspaceAction smartspaceAction2 = smartspaceAction;
                View.OnClickListener onClickListener = this.f972j;
                n1.d dVar4 = dVar;
                String str2 = str;
                SmartspaceTarget smartspaceTarget2 = smartspaceTarget;
                if (dVar3 != null) {
                    L2.h hVar = dVar3.f1320h;
                    if (hVar != null) {
                        hVar.f1329b = i5;
                    }
                    L2.a.a(BcSmartspaceEvent.SMARTSPACE_CARD_CLICK, dVar3);
                }
                if (!z6) {
                    cVar3.getClass();
                    try {
                        if (smartspaceAction2.getIntent() != null) {
                            cVar3.b(view2, smartspaceAction2.getIntent());
                        } else if (smartspaceAction2.getPendingIntent() != null) {
                            cVar3.a(view2, smartspaceAction2.getPendingIntent());
                        }
                    } catch (ActivityNotFoundException e4) {
                        Log.w("BcSmartspaceDataPlugin", "Could not launch intent for action: " + smartspaceAction2, e4);
                    }
                }
                if (onClickListener != null) {
                    onClickListener.onClick(view2);
                }
                if (dVar4 == null) {
                    Log.w(str2, "Cannot notify target interaction smartspace event: event notifier null.");
                } else {
                    dVar4.a(new SmartspaceTargetEvent.Builder(1).setSmartspaceTarget(smartspaceTarget2).setSmartspaceActionId(smartspaceAction2.getId()).build());
                }
            }
        });
    }

    public static void i(View view, final SmartspaceTarget smartspaceTarget, final TapAction tapAction, final n1.d dVar, final String str, final L2.d dVar2, final int i4) {
        if (view == null || tapAction == null) {
            Log.e(str, "No tap action can be set up");
            return;
        }
        final boolean shouldShowOnLockscreen = tapAction.shouldShowOnLockscreen();
        view.setOnClickListener(new View.OnClickListener() { // from class: K2.b

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ View.OnClickListener f963i = null;

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                L2.d dVar3 = L2.d.this;
                int i5 = i4;
                String str2 = str;
                TapAction tapAction2 = tapAction;
                View.OnClickListener onClickListener = this.f963i;
                n1.d dVar4 = dVar;
                SmartspaceTarget smartspaceTarget2 = smartspaceTarget;
                if (dVar3 != null) {
                    L2.h hVar = dVar3.f1320h;
                    if (hVar != null) {
                        hVar.f1329b = i5;
                    }
                    L2.a.a(BcSmartspaceEvent.SMARTSPACE_CARD_CLICK, dVar3);
                }
                n1.c cVar = C0032e.f977a;
                if (cVar == null) {
                    cVar = new C0031d(str2);
                }
                if (!(tapAction2 == null || (tapAction2.getIntent() == null && tapAction2.getPendingIntent() == null))) {
                    try {
                        if (tapAction2.getIntent() != null) {
                            cVar.b(view2, tapAction2.getIntent());
                        } else if (tapAction2.getPendingIntent() != null) {
                            cVar.a(view2, tapAction2.getPendingIntent());
                        }
                    } catch (ActivityNotFoundException e4) {
                        Log.w("BcSmartspaceDataPlugin", "Could not launch intent for action: " + tapAction2, e4);
                    }
                }
                if (onClickListener != null) {
                    onClickListener.onClick(view2);
                }
                if (dVar4 == null) {
                    Log.w(str2, "Cannot notify target interaction smartspace event: event notifier null.");
                } else {
                    dVar4.a(new SmartspaceTargetEvent.Builder(1).setSmartspaceTarget(smartspaceTarget2).setSmartspaceActionId(tapAction2.getId().toString()).build());
                }
            }
        });
    }
}
