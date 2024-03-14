.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/r0;->a:I

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/r0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/icons/BitmapInfo;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/u0;

    invoke-interface {p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/u0;->a(Lcom/android/launcher3/icons/BitmapInfo;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/t0;

    check-cast p1, Lcom/android/launcher3/icons/BitmapInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->c:Z

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->d:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/r0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/r0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    check-cast p1, Landroidx/lifecycle/z;

    invoke-interface {p1, p0}, Landroidx/lifecycle/z;->i(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
