.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/n1;
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

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/n1;->a:I

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/n1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/n1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/n1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/q1;

    invoke-interface {p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/q1;->a(Ljava/lang/String;)V

    return-void

    :goto_0
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/q1;

    invoke-interface {p1}, Lcom/google/android/apps/nexuslauncher/allapps/q1;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
