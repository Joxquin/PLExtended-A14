package f0;

import androidx.slice.widget.SliceView;
import j.C1080K;
/* renamed from: f0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0836c {

    /* renamed from: a  reason: collision with root package name */
    public final int f9149a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9150b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9151c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9152d;

    /* renamed from: g  reason: collision with root package name */
    public int f9155g = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f9153e = -1;

    /* renamed from: f  reason: collision with root package name */
    public int f9154f = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f9156h = -1;

    public C0836c(int i4, int i5, int i6, int i7) {
        this.f9149a = i4;
        this.f9150b = i5;
        this.f9151c = i6;
        this.f9152d = i7;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("mode=");
        L l4 = SliceView.f4118I;
        int i4 = this.f9149a;
        sb.append(i4 != 1 ? i4 != 2 ? i4 != 3 ? C1080K.a("unknown mode: ", i4) : "MODE SHORTCUT" : "MODE LARGE" : "MODE SMALL");
        sb.append(", actionType=");
        String str2 = "TIME_PICK";
        int i5 = this.f9150b;
        switch (i5) {
            case 0:
                str = "TOGGLE";
                break;
            case 1:
                str = "BUTTON";
                break;
            case 2:
                str = "SLIDER";
                break;
            case 3:
                str = "CONTENT";
                break;
            case 4:
                str = "SEE MORE";
                break;
            case 5:
                str = "SELECTION";
                break;
            case 6:
                str = "DATE_PICK";
                break;
            case 7:
                str = "TIME_PICK";
                break;
            default:
                str = C1080K.a("unknown action: ", i5);
                break;
        }
        sb.append(str);
        sb.append(", rowTemplateType=");
        int i6 = this.f9151c;
        switch (i6) {
            case -1:
                str2 = "SHORTCUT";
                break;
            case 0:
                str2 = "LIST";
                break;
            case 1:
                str2 = "GRID";
                break;
            case 2:
                str2 = "MESSAGING";
                break;
            case 3:
                str2 = "TOGGLE";
                break;
            case 4:
                str2 = "SLIDER";
                break;
            case 5:
                str2 = "PROGRESS";
                break;
            case 6:
                str2 = "SELECTION";
                break;
            case 7:
                str2 = "DATE_PICK";
                break;
            case 8:
                break;
            default:
                str2 = C1080K.a("unknown row type: ", i6);
                break;
        }
        sb.append(str2);
        sb.append(", rowIndex=");
        sb.append(this.f9152d);
        sb.append(", actionPosition=");
        int i7 = this.f9155g;
        sb.append(i7 != 0 ? i7 != 1 ? i7 != 2 ? C1080K.a("unknown position: ", i7) : "CELL" : "END" : "START");
        sb.append(", actionIndex=");
        sb.append(this.f9153e);
        sb.append(", actionCount=");
        sb.append(this.f9154f);
        sb.append(", state=");
        sb.append(this.f9156h);
        return sb.toString();
    }
}
