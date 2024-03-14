.class public final synthetic LY1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;I)V
    .locals 0

    iput p2, p0, LY1/r;->d:I

    iput-object p1, p0, LY1/r;->e:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .locals 1

    iget v0, p0, LY1/r;->d:I

    iget-object p0, p0, LY1/r;->e:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->a(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;)V

    return-void

    :goto_0
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->a(Lcom/google/android/apps/nexuslauncher/search/SearchEditText;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
