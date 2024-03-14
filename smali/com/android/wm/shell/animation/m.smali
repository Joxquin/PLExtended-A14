.class public final Lcom/android/wm/shell/animation/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Lcom/android/wm/shell/animation/g;

.field public static final c:Lcom/android/wm/shell/animation/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/m;->a:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/android/wm/shell/animation/g;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/g;-><init>(FF)V

    sput-object v0, Lcom/android/wm/shell/animation/m;->b:Lcom/android/wm/shell/animation/g;

    new-instance v0, Lcom/android/wm/shell/animation/e;

    const v1, -0x800001

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Lcom/android/wm/shell/animation/e;-><init>(FFF)V

    sput-object v0, Lcom/android/wm/shell/animation/m;->c:Lcom/android/wm/shell/animation/e;

    return-void
.end method
