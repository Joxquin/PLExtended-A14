.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/u0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/g1;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/apps/nexuslauncher/allapps/g1;Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/I1;->a:I

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/I1;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/I1;->c:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/icons/BitmapInfo;)V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I1;->a:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/I1;->c:Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I1;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p(Lcom/android/launcher3/icons/BitmapInfo;Lcom/google/android/apps/nexuslauncher/allapps/g1;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p(Lcom/android/launcher3/icons/BitmapInfo;Lcom/google/android/apps/nexuslauncher/allapps/g1;)V

    return-void

    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
