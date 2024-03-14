.class public final synthetic LO0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(ILcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iput p1, p0, LO0/d;->a:I

    iput-object p2, p0, LO0/d;->b:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LO0/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LO0/d;->b:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1, p0}, Lcom/android/launcher3/model/data/ItemInfo;->p(Landroid/content/ComponentName;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, LO0/d;->b:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1, p0}, Lcom/android/launcher3/model/data/ItemInfo;->r(Landroid/content/ComponentName;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
