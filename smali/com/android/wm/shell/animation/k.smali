.class public final Lcom/android/wm/shell/animation/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wm/shell/animation/d;


# instance fields
.field public final synthetic a:Landroidx/dynamicanimation/animation/q;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lcom/android/wm/shell/animation/g;

.field public final synthetic e:Lcom/android/wm/shell/animation/l;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;Lcom/android/wm/shell/animation/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/animation/k;->a:Landroidx/dynamicanimation/animation/q;

    iput p2, p0, Lcom/android/wm/shell/animation/k;->b:F

    iput p3, p0, Lcom/android/wm/shell/animation/k;->c:F

    iput-object p4, p0, Lcom/android/wm/shell/animation/k;->d:Lcom/android/wm/shell/animation/g;

    iput-object p5, p0, Lcom/android/wm/shell/animation/k;->e:Lcom/android/wm/shell/animation/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;ZZFFZ)V
    .locals 7

    iget-object p7, p0, Lcom/android/wm/shell/animation/k;->a:Landroidx/dynamicanimation/animation/q;

    invoke-static {p2, p7}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-eqz p4, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_1

    move p2, p4

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iget v1, p0, Lcom/android/wm/shell/animation/k;->b:F

    cmpg-float v2, v1, p5

    iget v3, p0, Lcom/android/wm/shell/animation/k;->c:F

    if-gtz v2, :cond_2

    cmpg-float v2, p5, v3

    if-gtz v2, :cond_2

    move v2, p4

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    xor-int/2addr v2, p4

    if-nez p2, :cond_3

    if-eqz v2, :cond_a

    :cond_3
    iget-object v4, p0, Lcom/android/wm/shell/animation/k;->d:Lcom/android/wm/shell/animation/g;

    iput p6, v4, Lcom/android/wm/shell/animation/g;->c:F

    iget v5, v4, Lcom/android/wm/shell/animation/g;->d:F

    sget-object v6, Lcom/android/wm/shell/animation/m;->a:Ljava/util/WeakHashMap;

    const v6, -0x800001

    cmpg-float v5, v5, v6

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move p4, v0

    :goto_2
    if-eqz p4, :cond_8

    if-eqz p2, :cond_6

    cmpg-float p2, p6, p3

    if-gez p2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    iput v1, v4, Lcom/android/wm/shell/animation/g;->d:F

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_8

    cmpg-float p2, p5, v1

    if-gez p2, :cond_7

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    iput v1, v4, Lcom/android/wm/shell/animation/g;->d:F

    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/animation/k;->e:Lcom/android/wm/shell/animation/l;

    iget-object p2, p0, Lcom/android/wm/shell/animation/l;->b:Landroid/util/ArrayMap;

    invoke-virtual {p2, p7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_9

    new-instance p3, Landroidx/dynamicanimation/animation/s;

    invoke-direct {p3, p7, p1}, Landroidx/dynamicanimation/animation/s;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p7}, Lcom/android/wm/shell/animation/l;->c(Landroidx/dynamicanimation/animation/m;Landroidx/dynamicanimation/animation/q;)V

    invoke-virtual {p2, p7, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    check-cast p3, Landroidx/dynamicanimation/animation/s;

    invoke-virtual {v4, p3}, Lcom/android/wm/shell/animation/g;->a(Landroidx/dynamicanimation/animation/s;)V

    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/s;->h()V

    :cond_a
    :goto_6
    return-void
.end method
