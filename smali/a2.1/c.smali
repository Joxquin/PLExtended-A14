.class public final synthetic La2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/P;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/c;->d:Landroid/content/Context;

    iput-boolean p2, p0, La2/c;->e:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, La2/c;->d:Landroid/content/Context;

    iget-boolean p0, p0, La2/c;->e:Z

    sget p2, Lcom/google/android/apps/nexuslauncher/settings/AtAGlancePreference$SmartspaceConfirmation;->d:I

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "smartspace"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
