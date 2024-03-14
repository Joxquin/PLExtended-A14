.class public final synthetic LW1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;I)V
    .locals 0

    iput p2, p0, LW1/b;->d:I

    iput-object p1, p0, LW1/b;->e:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 1

    iget v0, p0, LW1/b;->d:I

    iget-object p0, p0, LW1/b;->e:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->o:Z

    return-void

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->p:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
