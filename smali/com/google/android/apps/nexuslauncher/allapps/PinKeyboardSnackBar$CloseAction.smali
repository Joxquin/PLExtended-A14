.class final enum Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

.field public static final enum e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

.field public static final enum f:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

.field public static final enum g:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

.field public static final synthetic h:[Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;


# instance fields
.field public final closeAction:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    const-string v1, "CLOSE_NO_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->d:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    const-string v2, "CLOSE_ACTION_DISMISS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    const-string v3, "CLOSE_ACTION_ACCEPTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->f:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    const-string v4, "CLOSE_ACTION_DISMISS_WHEN_FLAG_ON"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->g:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->h:[Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->closeAction:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;
    .locals 1

    const-class v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->h:[Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    invoke-virtual {v0}, [Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    return-object v0
.end method
